
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ozone_handle_t ;
struct TYPE_12__ {int (* action_content_list_switch ) (TYPE_4__*,TYPE_4__*,char*,char*,int ) ;} ;
typedef TYPE_2__ menu_file_list_cbs_t ;
struct TYPE_13__ {int action; int type; } ;
typedef TYPE_3__ menu_ctx_list_t ;
struct TYPE_14__ {size_t size; TYPE_1__* list; } ;
typedef TYPE_4__ file_list_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef enum menu_settings_type { ____Placeholder_menu_settings_type } menu_settings_type ;
struct TYPE_11__ {int type; int * label; } ;


 int MENU_ACTION_LEFT ;
 int MENU_LIST_HORIZONTAL ;
 scalar_t__ file_list_get_actiondata_at_offset (TYPE_4__*,size_t) ;
 int free (int *) ;
 int menu_driver_list_cache (TYPE_3__*) ;
 TYPE_4__* menu_entries_get_menu_stack_ptr (int ) ;
 TYPE_4__* menu_entries_get_selection_buf_ptr (int ) ;
 size_t menu_navigation_get_selection () ;
 int msg_hash_to_str (int) ;
 int * strdup (int ) ;
 int stub1 (TYPE_4__*,TYPE_4__*,char*,char*,int ) ;

void ozone_change_tab(ozone_handle_t *ozone,
      enum msg_hash_enums tab,
      enum menu_settings_type type)
{
   file_list_t *menu_stack = menu_entries_get_menu_stack_ptr(0);
   size_t stack_size;
   menu_ctx_list_t list_info;
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
   size_t selection = menu_navigation_get_selection();
   menu_file_list_cbs_t *cbs = selection_buf ?
      (menu_file_list_cbs_t*)file_list_get_actiondata_at_offset(selection_buf,
            selection) : ((void*)0);

   list_info.type = MENU_LIST_HORIZONTAL;
   list_info.action = MENU_ACTION_LEFT;

   stack_size = menu_stack->size;

   if (menu_stack->list[stack_size - 1].label)
      free(menu_stack->list[stack_size - 1].label);
   menu_stack->list[stack_size - 1].label = ((void*)0);

   menu_stack->list[stack_size - 1].label =
      strdup(msg_hash_to_str(tab));
   menu_stack->list[stack_size - 1].type =
      type;

   menu_driver_list_cache(&list_info);

   if (cbs && cbs->action_content_list_switch)
      cbs->action_content_list_switch(selection_buf, menu_stack, "", "", 0);
}
