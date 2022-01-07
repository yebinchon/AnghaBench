
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sleep (int) ;
 unsigned int plat_get_ticks_us () ;

void plat_wait_till_us(unsigned int us)
{
 int msdiff = (int)(us - plat_get_ticks_us()) / 1000;
 if (msdiff > 6)
  Sleep(msdiff - 6);
 while (plat_get_ticks_us() < us)
  ;
}
