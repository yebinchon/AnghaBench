
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int settings_t ;
struct TYPE_7__ {int argc; char** argv; int environ_get; void* args; } ;
typedef TYPE_2__ content_ctx_info_t ;
struct TYPE_9__ {int info; } ;
struct TYPE_8__ {TYPE_1__* application; } ;
struct TYPE_6__ {int exiting; int (* quit ) () ;int (* process_events ) () ;} ;


 int CMD_EVENT_HISTORY_DEINIT ;
 int CORE_TYPE_PLAIN ;
 int CoInitialize (int *) ;
 int DRIVERS_CMD_ALL ;
 scalar_t__ FAILED (int ) ;
 int MAGIC_POINTER ;
 scalar_t__ MAX_USERS ;
 int RARCH_CTL_STATE_FREE ;
 int RARCH_DRIVER_CTL_DEINIT ;
 int RARCH_ERR (char*) ;
 int RETRO_DEVICE_JOYPAD ;
 int audio_driver_active ;
 scalar_t__ calloc (int,int) ;
 int command_event (int ,int *) ;
 int * configuration_settings ;
 int driver_ctl (int ,int *) ;
 int driver_uninit (int ) ;
 int frontend_driver_environment_get_ptr () ;
 int frontend_driver_init_first (void*) ;
 scalar_t__ frontend_driver_is_inited () ;
 int global_free () ;
 int input_config_set_device (scalar_t__,int ) ;
 int libretro_free_system_info (int *) ;
 int main_exit (void*) ;
 int rarch_ctl (int ,int *) ;
 int rarch_favorites_deinit () ;
 scalar_t__ rarch_is_inited ;
 int rarch_tls ;
 int retroarch_msg_queue_init () ;
 int runloop_iterate () ;
 TYPE_5__ runloop_system ;
 int sthread_tls_create (int *) ;
 int sthread_tls_set (int *,int ) ;
 int stub1 () ;
 int stub2 () ;
 int task_push_load_content_from_cli (int *,int *,TYPE_2__*,int ,int *,int *) ;
 int task_queue_check () ;
 int ui_companion_driver_init_first () ;
 TYPE_3__ ui_companion_qt ;
 int video_driver_active ;

int rarch_main(int argc, char *argv[], void *data)
{
   libretro_free_system_info(&runloop_system.info);
   command_event(CMD_EVENT_HISTORY_DEINIT, ((void*)0));
   rarch_favorites_deinit();

   configuration_settings = (settings_t*)calloc(1, sizeof(settings_t));

   driver_ctl(RARCH_DRIVER_CTL_DEINIT, ((void*)0));
   rarch_ctl(RARCH_CTL_STATE_FREE, ((void*)0));
   global_free();

   frontend_driver_init_first(data);

   if (rarch_is_inited)
      driver_uninit(DRIVERS_CMD_ALL);





   video_driver_active = 1;
   audio_driver_active = 1;
   {
      uint8_t i;
      for (i = 0; i < MAX_USERS; i++)
         input_config_set_device(i, RETRO_DEVICE_JOYPAD);
   }
   retroarch_msg_queue_init();

   if (frontend_driver_is_inited())
   {
      content_ctx_info_t info;

      info.argc = argc;
      info.argv = argv;
      info.args = data;
      info.environ_get = frontend_driver_environment_get_ptr();

      if (!task_push_load_content_from_cli(
               ((void*)0),
               ((void*)0),
               &info,
               CORE_TYPE_PLAIN,
               ((void*)0),
               ((void*)0)))
         return 1;
   }

   ui_companion_driver_init_first();


   do
   {
      int ret;
      bool app_exit = 0;



      ret = runloop_iterate();

      task_queue_check();





      if (ret == -1 || app_exit)
      {



         break;
      }
   }while(1);

   main_exit(data);


   return 0;
}
