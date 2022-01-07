
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int video_driver_monitor_reset () ;

__attribute__((used)) static int setting_action_start_video_refresh_rate_auto(
      rarch_setting_t *setting)
{
   (void)setting;

   video_driver_monitor_reset();
   return 0;
}
