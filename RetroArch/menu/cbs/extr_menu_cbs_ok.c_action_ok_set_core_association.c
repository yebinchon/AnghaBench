
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rpl_entry_selection_ptr; } ;
typedef TYPE_1__ menu_handle_t ;


 int ACTION_OK_DL_DEFERRED_CORE_LIST_SET ;
 int generic_action_ok_displaylist_push (char const*,int *,int *,int ,int ,size_t,int ) ;
 int menu_cbs_exit () ;
 TYPE_1__* menu_driver_get_ptr () ;

__attribute__((used)) static int action_ok_set_core_association(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   menu_handle_t *menu = menu_driver_get_ptr();

   if (!menu)
      return menu_cbs_exit();



   return generic_action_ok_displaylist_push(path, ((void*)0),
         ((void*)0), 0, menu->rpl_entry_selection_ptr, entry_idx,
         ACTION_OK_DL_DEFERRED_CORE_LIST_SET);
}
