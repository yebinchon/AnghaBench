
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int CMD_EVENT_VIDEO_SET_BLOCKING_STATE ;
 int RARCH_DRIVER_CTL_SET_REFRESH_RATE ;
 int command_event (int ,int *) ;
 int driver_ctl (int ,float*) ;
 scalar_t__ setting_generic_action_ok_default (int *,int) ;
 float video_driver_get_refresh_rate () ;

__attribute__((used)) static int setting_action_ok_video_refresh_rate_polled(rarch_setting_t *setting,
      bool wraparound)
{
   float refresh_rate = 0.0;

   if (!setting)
     return -1;

   if ((refresh_rate = video_driver_get_refresh_rate()) == 0.0)
      return -1;

   driver_ctl(RARCH_DRIVER_CTL_SET_REFRESH_RATE, &refresh_rate);

   command_event(CMD_EVENT_VIDEO_SET_BLOCKING_STATE, ((void*)0));

   if (setting_generic_action_ok_default(setting, wraparound) != 0)
      return -1;

   return 0;
}
