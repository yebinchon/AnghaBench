
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void Atari_WhatIs(int mode)
{
 switch (mode) {
 case 0:
  printf("Joystick 0");
  break;
 case 1:
  printf("Joystick 1");
  break;
 case 2:
  printf("Joystick 2");
  break;
 case 3:
  printf("Joystick 3");
  break;
 default:
  printf("not available");
  break;
 }
}
