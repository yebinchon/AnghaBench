
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 TYPE_2__ Pico ;
 int RETRO_REGION_NTSC ;
 int RETRO_REGION_PAL ;

unsigned retro_get_region(void)
{
 return Pico.m.pal ? RETRO_REGION_PAL : RETRO_REGION_NTSC;
}
