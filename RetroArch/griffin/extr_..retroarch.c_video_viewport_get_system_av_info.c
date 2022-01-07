
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_system_av_info {int dummy; } ;


 struct retro_system_av_info video_driver_av_info ;

struct retro_system_av_info *video_viewport_get_system_av_info(void)
{
   return &video_driver_av_info;
}
