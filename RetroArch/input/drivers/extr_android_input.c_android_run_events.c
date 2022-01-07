
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct android_app {scalar_t__ destroyRequested; scalar_t__ reinitRequested; } ;


 scalar_t__ ALooper_pollOnce (int,int *,int *,int *) ;
 int APP_CMD_REINIT_DONE ;
 int CMD_EVENT_REINIT ;
 scalar_t__ LOOPER_ID_MAIN ;
 int RARCH_CTL_IS_PAUSED ;
 int RARCH_CTL_SET_SHUTDOWN ;
 int android_app_write_cmd (struct android_app*,int ) ;
 int android_input_poll_main_cmd () ;
 int command_event (int ,int *) ;
 scalar_t__ g_android ;
 scalar_t__ rarch_ctl (int ,int *) ;

bool android_run_events(void *data)
{
   struct android_app *android_app = (struct android_app*)g_android;

   if (ALooper_pollOnce(-1, ((void*)0), ((void*)0), ((void*)0)) == LOOPER_ID_MAIN)
      android_input_poll_main_cmd();


   if (android_app->destroyRequested != 0)
   {
      rarch_ctl(RARCH_CTL_SET_SHUTDOWN, ((void*)0));
      return 0;
   }

   if (android_app->reinitRequested != 0)
   {
      if (rarch_ctl(RARCH_CTL_IS_PAUSED, ((void*)0)))
         command_event(CMD_EVENT_REINIT, ((void*)0));
      android_app_write_cmd(android_app, APP_CMD_REINIT_DONE);
   }

   return 1;
}
