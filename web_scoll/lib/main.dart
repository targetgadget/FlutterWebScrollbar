import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Scrollbar(
                controller: _scrollController,
                isAlwaysShown: true,
                thickness: 12.0,
                radius: Radius.circular(0.0),
                child: ListView.builder(
                    controller: _scrollController,
                    itemBuilder: (context, index) => Text(index.toString()),
                    itemCount: 100))));
  }
}
