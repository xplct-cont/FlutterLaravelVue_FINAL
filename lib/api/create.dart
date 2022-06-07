import 'dart:convert';

import 'package:http/http.dart' as http;

class Createddata {

  Future datacreated(point_of_origintext, destinationtext, passenger_nametext, agetext, contact_notext) async {
    final response =
    await http.post(Uri.parse('http://192.168.1.4:8000/api/bookings'),
        body: jsonEncode({
          "point_of_origin":point_of_origintext,
          "destination": destinationtext,
          "passenger_name": passenger_nametext,
          "age": agetext,
          "contact_no":contact_notext,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',

        });
    print(response.statusCode);
    if (response.statusCode == 200) {

      print('Data Created Successfully');
      print(response.body);
    } else {
      print('Error creating data');
    }
  }

}

