
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int (* action_up ) (int ,int ) ;int (* action_down ) (int ,int ) ;int (* action_cancel ) (int ,int ,int ,size_t) ;int (* action_ok ) (int ,int ,int ,size_t,int ) ;int (* action_start ) (int ,int ) ;int (* action_left ) (int ,int ,int) ;int (* action_right ) (int ,int ,int) ;int (* action_info ) (int ,int ) ;int (* action_select ) (int ,int ,int ,size_t) ;int (* action_scan ) (int ,int ,int ,size_t) ;int (* action_refresh ) (TYPE_4__*,TYPE_4__*) ;} ;
typedef TYPE_2__ menu_file_list_cbs_t ;
struct TYPE_12__ {int type; int label; int path; int entry_idx; } ;
typedef TYPE_3__ menu_entry_t ;
struct TYPE_13__ {TYPE_1__* list; } ;
typedef TYPE_4__ file_list_t ;
typedef enum menu_action { ____Placeholder_menu_action } menu_action ;
struct TYPE_10__ {scalar_t__ actiondata; } ;
 int MENU_ENTRIES_CTL_NEEDS_REFRESH ;
 int MENU_ENTRIES_CTL_UNSET_REFRESH ;
 int MENU_NAVIGATION_CTL_ASCEND_ALPHABET ;
 int MENU_NAVIGATION_CTL_DESCEND_ALPHABET ;
 int menu_driver_ctl (int ,int *) ;
 scalar_t__ menu_entries_ctl (int ,int*) ;
 TYPE_4__* menu_entries_get_menu_stack_ptr (int ) ;
 TYPE_4__* menu_entries_get_selection_buf_ptr (int ) ;
 int menu_input_dialog_start_search () ;
 int stub1 (int ,int ) ;
 int stub10 (int ,int ,int ,size_t) ;
 int stub11 (TYPE_4__*,TYPE_4__*) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ,int ,size_t) ;
 int stub4 (int ,int ,int ,size_t,int ) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int ,int) ;
 int stub7 (int ,int ,int) ;
 int stub8 (int ,int ) ;
 int stub9 (int ,int ,int ,size_t) ;

int generic_menu_entry_action(
      void *userdata, menu_entry_t *entry, size_t i, enum menu_action action)
{
   int ret = 0;
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
   menu_file_list_cbs_t *cbs = selection_buf ?
      (menu_file_list_cbs_t*)selection_buf->list[i].actiondata : ((void*)0);

   switch (action)
   {
      case 128:
         if (cbs && cbs->action_up)
            ret = cbs->action_up(entry->type, entry->label);
         break;
      case 139:
         if (cbs && cbs->action_down)
            ret = cbs->action_down(entry->type, entry->label);
         break;
      case 132:
         menu_driver_ctl(MENU_NAVIGATION_CTL_DESCEND_ALPHABET, ((void*)0));
         break;
      case 133:
         menu_driver_ctl(MENU_NAVIGATION_CTL_ASCEND_ALPHABET, ((void*)0));
         break;
      case 140:
         if (cbs && cbs->action_cancel)
            ret = cbs->action_cancel(entry->path,
                  entry->label, entry->type, i);
         break;
      case 136:
         if (cbs && cbs->action_ok)
            ret = cbs->action_ok(entry->path,
                  entry->label, entry->type, i, entry->entry_idx);
         break;
      case 129:
         if (cbs && cbs->action_start)
            ret = cbs->action_start(entry->type, entry->label);
         break;
      case 137:
         if (cbs && cbs->action_left)
            ret = cbs->action_left(entry->type, entry->label, 0);
         break;
      case 135:
         if (cbs && cbs->action_right)
            ret = cbs->action_right(entry->type, entry->label, 0);
         break;
      case 138:
         if (cbs && cbs->action_info)
            ret = cbs->action_info(entry->type, entry->label);
         break;
      case 130:
         if (cbs && cbs->action_select)
            ret = cbs->action_select(entry->path,
                  entry->label, entry->type, i);
         break;
      case 131:
         menu_input_dialog_start_search();
         break;
      case 134:
         if (cbs && cbs->action_scan)
            ret = cbs->action_scan(entry->path,
                  entry->label, entry->type, i);
         break;
      default:
         break;
   }

   cbs = selection_buf ? (menu_file_list_cbs_t*)
      selection_buf->list[i].actiondata : ((void*)0);

   if (cbs && cbs->action_refresh)
   {
      if (menu_entries_ctl(MENU_ENTRIES_CTL_NEEDS_REFRESH, ((void*)0)))
      {
         bool refresh = 0;
         file_list_t *menu_stack = menu_entries_get_menu_stack_ptr(0);

         cbs->action_refresh(selection_buf, menu_stack);
         menu_entries_ctl(MENU_ENTRIES_CTL_UNSET_REFRESH, &refresh);
      }
   }

   return ret;
}
