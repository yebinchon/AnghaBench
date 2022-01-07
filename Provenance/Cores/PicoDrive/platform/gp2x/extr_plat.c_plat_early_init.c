
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gp2x_get_ticks_ms ;
 int gp2x_get_ticks_us ;
 int plat_get_ticks_ms_good ;
 int plat_get_ticks_us_good ;

void plat_early_init(void)
{

 gp2x_get_ticks_ms = plat_get_ticks_ms_good;
 gp2x_get_ticks_us = plat_get_ticks_us_good;
}
