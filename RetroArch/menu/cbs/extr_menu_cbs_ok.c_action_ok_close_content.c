
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_EVENT_UNLOAD_CORE ;
 int generic_action_ok_command (int ) ;
 int menu_navigation_set_selection (int ) ;

int action_ok_close_content(const char *path, const char *label, unsigned type, size_t idx, size_t entry_idx)
{

   menu_navigation_set_selection(0);
   return generic_action_ok_command(CMD_EVENT_UNLOAD_CORE);
}
