
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int joy0 ;
 int joy1 ;
 int joyswap ;
 int trig0 ;

int PLATFORM_TRIG(int num)
{
 switch (num) {
 case 0:
  return (joy0 > 0x0f) ? 0 : joyswap ? 1 : trig0;
 case 1:
  return (joy1 > 0x0f) ? 0 : joyswap ? trig0 : 1;
 case 2:
 case 3:
 default:
  return 1;
 }
}
