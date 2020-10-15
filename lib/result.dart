import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQ;

  Result(this.resultScore, this.resetQ);

  String get resultPhrase {
    var resultText;
    if (resultScore <= 3) {
      resultText = 'Nice try';
    } else if (resultScore <= 7) {
      resultText = 'Keep it up';
    } else {
      resultText = 'OwO';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart'),
          textColor: Colors.blue,
          onPressed: resetQ,
        )
      ],
    ));
  }
}
