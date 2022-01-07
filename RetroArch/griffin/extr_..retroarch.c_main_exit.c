
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ config_save_on_exit; } ;
struct TYPE_6__ {int video_driver; } ;
struct TYPE_8__ {TYPE_2__ bools; TYPE_1__ arrays; } ;
typedef TYPE_3__ settings_t ;


 int CMD_EVENT_LOG_FILE_DEINIT ;
 int CMD_EVENT_MENU_SAVE_CURRENT_CONFIG ;
 int CoUninitialize () ;
 int DRIVERS_CMD_ALL ;
 int RARCH_CTL_DATA_DEINIT ;
 int RARCH_CTL_MAIN_DEINIT ;
 int RARCH_CTL_STATE_FREE ;
 int RARCH_DRIVER_CTL_DEINIT ;
 int RARCH_LOG (char*,int ) ;
 int RARCH_MENU_CTL_UNSET_OWN_DRIVER ;
 int RARCH_PATH_CORE ;
 scalar_t__* cached_video_driver ;
 int command_event (int ,int *) ;
 TYPE_3__* configuration_settings ;
 int driver_ctl (int ,int *) ;
 int driver_uninit (int ) ;
 int free (TYPE_3__*) ;
 int frontend_driver_deinit (void*) ;
 int frontend_driver_exitspawn (int ,int ) ;
 int frontend_driver_free () ;
 int frontend_driver_shutdown (int) ;
 int global_free () ;
 int has_set_username ;
 int logger_shutdown () ;
 int menu_driver_ctl (int ,int *) ;
 int path_get_ptr (int ) ;
 int path_get_realsize (int ) ;
 int rarch_block_config_read ;
 int rarch_ctl (int ,int *) ;
 int rarch_error_on_init ;
 int rarch_is_inited ;
 int rarch_perf_log () ;
 int retroarch_msg_queue_deinit () ;
 int strcpy (int ,scalar_t__*) ;
 int ui_companion_driver_deinit () ;
 int ui_companion_driver_free () ;

void main_exit(void *args)
{
   settings_t *settings = configuration_settings;

   if (cached_video_driver[0])
   {
      strcpy(settings->arrays.video_driver, cached_video_driver);
      cached_video_driver[0] = 0;
      RARCH_LOG("[Video]: Restored video driver to \"%s\".\n", settings->arrays.video_driver);
   }

   if (settings->bools.config_save_on_exit)
      command_event(CMD_EVENT_MENU_SAVE_CURRENT_CONFIG, ((void*)0));





   rarch_ctl(RARCH_CTL_MAIN_DEINIT, ((void*)0));

   rarch_perf_log();





   frontend_driver_deinit(args);
   frontend_driver_exitspawn(
         path_get_ptr(RARCH_PATH_CORE),
         path_get_realsize(RARCH_PATH_CORE));

   has_set_username = 0;
   rarch_is_inited = 0;
   rarch_error_on_init = 0;
   rarch_block_config_read = 0;

   retroarch_msg_queue_deinit();
   driver_uninit(DRIVERS_CMD_ALL);
   command_event(CMD_EVENT_LOG_FILE_DEINIT, ((void*)0));

   rarch_ctl(RARCH_CTL_STATE_FREE, ((void*)0));
   global_free();
   rarch_ctl(RARCH_CTL_DATA_DEINIT, ((void*)0));

   if (configuration_settings)
      free(configuration_settings);
   configuration_settings = ((void*)0);

   ui_companion_driver_deinit();

   frontend_driver_shutdown(0);

   driver_ctl(RARCH_DRIVER_CTL_DEINIT, ((void*)0));
   ui_companion_driver_free();
   frontend_driver_free();




}
