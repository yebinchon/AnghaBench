
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int symbols_inited; int (* retro_deinit ) () ;scalar_t__ inited; } ;


 int DRIVERS_CMD_ALL ;
 int RARCH_LOG (char*) ;
 int command_event_disable_overrides () ;
 int core_unload_game () ;
 TYPE_1__ current_core ;
 int driver_uninit (int ) ;
 int input_remapping_set_defaults (int) ;
 int rcheevos_unload () ;
 int retroarch_unset_runtime_shader_preset () ;
 scalar_t__ runloop_remaps_content_dir_active ;
 scalar_t__ runloop_remaps_core_active ;
 scalar_t__ runloop_remaps_game_active ;
 int stub1 () ;
 int uninit_libretro_symbols (TYPE_1__*) ;
 int video_driver_set_cached_frame_ptr (int *) ;

__attribute__((used)) static void command_event_deinit_core(bool reinit)
{




   RARCH_LOG("Unloading game..\n");
   core_unload_game();

   RARCH_LOG("Unloading core..\n");

   video_driver_set_cached_frame_ptr(((void*)0));

   if (current_core.inited)
      current_core.retro_deinit();

   RARCH_LOG("Unloading core symbols..\n");
   uninit_libretro_symbols(&current_core);
   current_core.symbols_inited = 0;

   if (reinit)
      driver_uninit(DRIVERS_CMD_ALL);

   command_event_disable_overrides();
   retroarch_unset_runtime_shader_preset();

   if ( runloop_remaps_core_active
         || runloop_remaps_content_dir_active
         || runloop_remaps_game_active
      )
      input_remapping_set_defaults(1);
}
