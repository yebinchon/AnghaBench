
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RETRO_API_VERSION ;

unsigned libretro_dummy_retro_api_version(void)
{
   return RETRO_API_VERSION;
}
