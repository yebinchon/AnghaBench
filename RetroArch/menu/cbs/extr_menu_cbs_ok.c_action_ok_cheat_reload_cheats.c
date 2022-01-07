
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHEAT_HANDLER_TYPE_EMU ;
 int MENU_ENTRIES_CTL_SET_REFRESH ;
 int RARCH_MENU_CTL_SET_PREVENT_POPULATE ;
 int cheat_manager_load_game_specific_cheats () ;
 int cheat_manager_realloc (int ,int ) ;
 int menu_driver_ctl (int ,int *) ;
 int menu_entries_ctl (int ,int*) ;

__attribute__((used)) static int action_ok_cheat_reload_cheats(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   bool refresh = 0 ;
   cheat_manager_realloc(0, CHEAT_HANDLER_TYPE_EMU);
   cheat_manager_load_game_specific_cheats();
   menu_entries_ctl(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
   menu_driver_ctl(RARCH_MENU_CTL_SET_PREVENT_POPULATE, ((void*)0));
   return 0 ;
}
