
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ apply_cheats_after_load; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;


 int RARCH_NETPLAY_CTL_IS_DATA_INITED ;
 int * bsv_movie_state_handle ;
 int cheat_manager_alloc_if_empty () ;
 int cheat_manager_apply_cheats () ;
 int cheat_manager_load_game_specific_cheats () ;
 TYPE_2__* configuration_settings ;
 int netplay_driver_ctl (int ,int *) ;

__attribute__((used)) static void command_event_init_cheats(void)
{
   settings_t *settings = configuration_settings;
   bool allow_cheats = 1;





   allow_cheats &= !(bsv_movie_state_handle != ((void*)0));

   if (!allow_cheats)
      return;

   cheat_manager_alloc_if_empty();
   cheat_manager_load_game_specific_cheats();

   if (settings && settings->bools.apply_cheats_after_load)
      cheat_manager_apply_cheats();
}
