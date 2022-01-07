
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int gp2x_get_ticks_us () ;

unsigned int plat_get_ticks_us(void)
{
 return gp2x_get_ticks_us();
}
