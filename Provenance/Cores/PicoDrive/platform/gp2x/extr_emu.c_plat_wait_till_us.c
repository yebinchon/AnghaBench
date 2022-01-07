
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int plat_get_ticks_us () ;
 int spend_cycles (int) ;

void plat_wait_till_us(unsigned int us_to)
{
 unsigned int now;

 spend_cycles(1024);
 now = plat_get_ticks_us();

 while ((signed int)(us_to - now) > 512)
 {
  spend_cycles(1024);
  now = plat_get_ticks_us();
 }
}
