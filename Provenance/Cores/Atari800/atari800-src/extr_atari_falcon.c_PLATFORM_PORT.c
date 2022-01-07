
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INPUT_STICK_CENTRE ;
 int joy0 ;
 int joy1 ;
 scalar_t__ joyswap ;
 int stick0 ;
 int trig0 ;

int PLATFORM_PORT(int num)
{
 if (num == 0) {
  if (stick0 == INPUT_STICK_CENTRE && trig0 == 1)
   return (((~joy1 << 4) & 0xf0) | ((~joy0) & 0x0f));
  else {
   if (joyswap)
    return ((stick0 << 4) | ((~joy0) & 0x0f));
   else
    return (((~joy0 << 4) & 0xf0) | stick0);
  }
 }
 else
  return 0xff;
}
