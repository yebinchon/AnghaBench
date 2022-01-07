
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cheevos_hardcore_mode_enable; int cheevos_enable; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;


 int CMD_EVENT_NETPLAY_INIT ;
 scalar_t__ CORE_TYPE_DUMMY ;
 scalar_t__ CORE_TYPE_PLAIN ;
 int MSG_SKIPPING_SRAM_LOAD ;
 int RARCH_LOG (char*,int ) ;
 int bsv_movie_deinit () ;
 int bsv_movie_init () ;
 int command_event (int ,int *) ;
 int command_event_load_auto_state () ;
 int command_event_set_savestate_auto_index () ;
 TYPE_2__* configuration_settings ;
 int content_get_status (int*,int*) ;
 int content_init () ;
 int content_set_subsystem_info () ;
 scalar_t__ current_core_type ;
 scalar_t__ event_load_save_files () ;
 int msg_hash_to_str (int ) ;
 int path_fill_names () ;
 int rarch_use_sram ;
 int runloop_core_running ;

__attribute__((used)) static bool event_init_content(void)
{
   bool contentless = 0;
   bool is_inited = 0;

   content_get_status(&contentless, &is_inited);

   rarch_use_sram = (current_core_type == CORE_TYPE_PLAIN)
      && !contentless;



   if (current_core_type == CORE_TYPE_DUMMY)
      return 1;

   content_set_subsystem_info();

   content_get_status(&contentless, &is_inited);

   if (!contentless)
      path_fill_names();

   if (!content_init())
   {
      runloop_core_running = 0;
      return 0;
   }

   command_event_set_savestate_auto_index();

   if (event_load_save_files())
      RARCH_LOG("%s.\n",
            msg_hash_to_str(MSG_SKIPPING_SRAM_LOAD));
   command_event_load_auto_state();


   bsv_movie_deinit();
   bsv_movie_init();
   command_event(CMD_EVENT_NETPLAY_INIT, ((void*)0));

   return 1;
}
