
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INPUT_STICK_BACK ;
 int INPUT_STICK_FORWARD ;
 int INPUT_STICK_LEFT ;
 int INPUT_STICK_RIGHT ;
 int PAD_DOWN ;
 int PAD_LEFT ;
 int PAD_RIGHT ;
 int PAD_UP ;
 int PadButtons () ;

int PLATFORM_PORT(int num)
{
 int ret = 0xff;
 if (num == 0) {
  int pad = PadButtons();
  if (pad & PAD_LEFT)
   ret &= 0xf0 | INPUT_STICK_LEFT;
  if (pad & PAD_RIGHT)
   ret &= 0xf0 | INPUT_STICK_RIGHT;
  if (pad & PAD_UP)
   ret &= 0xf0 | INPUT_STICK_FORWARD;
  if (pad & PAD_DOWN)
   ret &= 0xf0 | INPUT_STICK_BACK;
 }
 return ret;
}
