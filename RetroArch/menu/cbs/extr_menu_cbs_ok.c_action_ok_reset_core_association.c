
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rpl_entry_selection_ptr; } ;
typedef TYPE_1__ menu_handle_t ;


 int CMD_EVENT_RESET_CORE_ASSOCIATION ;
 int command_event (int ,void*) ;
 int menu_cbs_exit () ;
 TYPE_1__* menu_driver_get_ptr () ;

__attribute__((used)) static int action_ok_reset_core_association(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   menu_handle_t *menu = menu_driver_get_ptr();

   if (!menu)
      return menu_cbs_exit();

   if (!command_event(CMD_EVENT_RESET_CORE_ASSOCIATION,
            (void *)&menu->rpl_entry_selection_ptr))
      return menu_cbs_exit();
   return 0;
}
