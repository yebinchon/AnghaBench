
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool libretro_dummy_retro_serialize(void *data, size_t size)
{
   (void)data;
   (void)size;
   return 0;
}
