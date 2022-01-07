
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct android_app {scalar_t__ destroyRequested; scalar_t__ reinitRequested; scalar_t__ input_alive; } ;
struct TYPE_5__ {int input_block_timeout; } ;
struct TYPE_6__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
typedef int android_input_t ;
struct TYPE_7__ {scalar_t__ valid; } ;


 int ALooper_pollAll (int,int *,int *,int *) ;
 int APP_CMD_REINIT_DONE ;
 int CMD_EVENT_REINIT ;



 int RARCH_CTL_IS_PAUSED ;
 int RARCH_CTL_SET_SHUTDOWN ;
 size_t RARCH_PAUSE_TOGGLE ;
 int android_app_write_cmd (struct android_app*,int ) ;
 scalar_t__ android_input_key_pressed (int *,size_t) ;
 int android_input_poll_input (int *) ;
 int android_input_poll_main_cmd () ;
 int android_input_poll_memcpy (int *) ;
 int android_input_poll_user (int *) ;
 int command_event (int ,int *) ;
 TYPE_2__* config_get_ptr () ;
 scalar_t__ g_android ;
 TYPE_3__** input_config_binds ;
 scalar_t__ rarch_ctl (int ,int *) ;

__attribute__((used)) static void android_input_poll(void *data)
{
   settings_t *settings = config_get_ptr();
   int ident;
   struct android_app *android_app = (struct android_app*)g_android;
   android_input_t *android = (android_input_t*)data;

   while ((ident =
            ALooper_pollAll((input_config_binds[0][RARCH_PAUSE_TOGGLE].valid
               && android_input_key_pressed(android, RARCH_PAUSE_TOGGLE))
               ? -1 : settings->uints.input_block_timeout,
               ((void*)0), ((void*)0), ((void*)0))) >= 0)
   {
      switch (ident)
      {
         case 130:
            android_input_poll_input(android);
            break;
         case 128:
            android_input_poll_user(android);
            break;
         case 129:
            android_input_poll_main_cmd();
            break;
      }

      if (android_app->destroyRequested != 0)
      {
         rarch_ctl(RARCH_CTL_SET_SHUTDOWN, ((void*)0));
         return;
      }

      if (android_app->reinitRequested != 0)
      {
         if (rarch_ctl(RARCH_CTL_IS_PAUSED, ((void*)0)))
            command_event(CMD_EVENT_REINIT, ((void*)0));
         android_app_write_cmd(android_app, APP_CMD_REINIT_DONE);
         return;
      }
   }

   if (android_app->input_alive)
      android_input_poll_memcpy(android);
}
