
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHEAT_HANDLER_TYPE_EMU ;
 int MENU_ENTRIES_CTL_SET_REFRESH ;
 scalar_t__ cheat_manager_get_size () ;
 int cheat_manager_realloc (int ,int ) ;
 int menu_entries_ctl (int ,int*) ;

__attribute__((used)) static int action_start_cheat_num_passes(unsigned type, const char *label)
{
   if (cheat_manager_get_size())
   {
      bool refresh = 0;
      menu_entries_ctl(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
      cheat_manager_realloc(0, CHEAT_HANDLER_TYPE_EMU);
   }

   return 0;
}
