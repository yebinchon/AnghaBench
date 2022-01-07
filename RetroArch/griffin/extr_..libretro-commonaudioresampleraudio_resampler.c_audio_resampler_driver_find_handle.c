
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** resampler_drivers ;

const void *audio_resampler_driver_find_handle(int idx)
{
   const void *drv = resampler_drivers[idx];
   if (!drv)
      return ((void*)0);
   return drv;
}
