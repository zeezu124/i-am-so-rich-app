// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    print('Question ' + (_questionIndex + 1).toString());
    setState(() {
      if (_questionIndex >= 2) {
        _questionIndex = 0;
      } else {
        _questionIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite movie?',
      'Who stole the egg?',
      'Who stole the other egg?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // backgroundColor: Color.fromARGB(255, 33, 11, 75),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('The first cow'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('The second goat'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('The third chicken'),
            ),
          ],
        ),
      ),
    );
  }
}
