
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RETRO_REGION_NTSC ;

unsigned libretro_dummy_retro_get_region(void)
{
   return RETRO_REGION_NTSC;
}
