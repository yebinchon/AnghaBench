
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ video_context_driver_get_refresh_rate (float*) ;

__attribute__((used)) static float vulkan_get_refresh_rate(void *data)
{
   float refresh_rate;

   if (video_context_driver_get_refresh_rate(&refresh_rate))
       return refresh_rate;

   return 0.0f;
}
