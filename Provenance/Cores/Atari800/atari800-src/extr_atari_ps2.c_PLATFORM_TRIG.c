
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAD_CROSS ;
 int PadButtons () ;

int PLATFORM_TRIG(int num)
{
 if (num == 0 && PadButtons() & PAD_CROSS)
  return 0;
 return 1;
}
