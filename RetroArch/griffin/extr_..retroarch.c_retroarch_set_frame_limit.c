
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {float fps; } ;
struct retro_system_av_info {TYPE_2__ timing; } ;
struct TYPE_5__ {float fastforward_ratio; } ;
struct TYPE_7__ {TYPE_1__ floats; } ;
typedef TYPE_3__ settings_t ;
typedef scalar_t__ retro_time_t ;


 TYPE_3__* configuration_settings ;
 int cpu_features_get_time_usec () ;
 int frame_limit_last_time ;
 scalar_t__ frame_limit_minimum_time ;
 scalar_t__ roundf (float) ;
 struct retro_system_av_info video_driver_av_info ;

__attribute__((used)) static void retroarch_set_frame_limit(void)
{
   settings_t *settings = configuration_settings;
   struct retro_system_av_info *av_info = &video_driver_av_info;
   float fastforward_ratio_orig = settings->floats.fastforward_ratio;
   float fastforward_ratio = (fastforward_ratio_orig == 0.0f) ? 1.0f : fastforward_ratio_orig;

   frame_limit_last_time = cpu_features_get_time_usec();
   frame_limit_minimum_time = (retro_time_t)roundf(1000000.0f
         / (av_info->timing.fps * fastforward_ratio));
}
