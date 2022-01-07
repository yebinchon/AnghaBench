
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int video_fullscreen; } ;
struct TYPE_6__ {int video_scale; } ;
struct TYPE_8__ {TYPE_2__ bools; TYPE_1__ floats; } ;
typedef TYPE_3__ settings_t ;


 int CMD_EVENT_REINIT ;
 int RARCH_CTL_SET_WINDOWED_SCALE ;
 int command_event (int ,int *) ;
 int configuration_set_float (TYPE_3__*,int ,float) ;
 TYPE_3__* configuration_settings ;
 int rarch_ctl (int ,unsigned int*) ;
 unsigned int runloop_pending_windowed_scale ;

__attribute__((used)) static bool command_event_resize_windowed_scale(void)
{
   unsigned idx = 0;
   settings_t *settings = configuration_settings;
   unsigned window_scale = runloop_pending_windowed_scale;

   if (window_scale == 0)
      return 0;

   configuration_set_float(settings, settings->floats.video_scale, (float)window_scale);

   if (!settings->bools.video_fullscreen)
      command_event(CMD_EVENT_REINIT, ((void*)0));

   rarch_ctl(RARCH_CTL_SET_WINDOWED_SCALE, &idx);

   return 1;
}
