
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_EVENT_UNLOAD_CORE ;
 int MENU_ENTRIES_CTL_SET_REFRESH ;
 int RARCH_MENU_CTL_SET_PREVENT_POPULATE ;
 int generic_action_ok_command (int ) ;
 int menu_driver_ctl (int ,int *) ;
 int menu_entries_ctl (int ,int*) ;

__attribute__((used)) static int action_start_load_core(unsigned type, const char *label)
{
   int ret = generic_action_ok_command(
         CMD_EVENT_UNLOAD_CORE);
   bool refresh = 0;

   menu_entries_ctl(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
   menu_driver_ctl(RARCH_MENU_CTL_SET_PREVENT_POPULATE, ((void*)0));
   return ret;
}
