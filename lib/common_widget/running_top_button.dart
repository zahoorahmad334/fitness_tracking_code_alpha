import 'package:flutter/material.dart';
import 'package:workout_fitness/common/color_extension.dart';

class RunningTopButton extends StatelessWidget {
  final String icon;
  final bool isActive;
  final VoidCallback onPressed;
  const RunningTopButton({Key? key, required this.icon , required this.isActive , required this.onPressed }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
                      child: InkWell(
                        onTap: onPressed,
                        child: Image.asset(
                          icon,
                          width: 25,
                          height: 25,
                          color: isActive ? TColor.primaryText : TColor.gray.withOpacity(0.5) ,
                        ),
                      ),
                    );
  }
}