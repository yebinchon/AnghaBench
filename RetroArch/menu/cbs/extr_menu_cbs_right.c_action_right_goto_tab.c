
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int (* action_content_list_switch ) (TYPE_4__*,TYPE_4__*,char*,char*,int ) ;} ;
typedef TYPE_2__ menu_file_list_cbs_t ;
struct TYPE_12__ {int action; int type; } ;
typedef TYPE_3__ menu_ctx_list_t ;
struct TYPE_13__ {TYPE_1__* list; } ;
typedef TYPE_4__ file_list_t ;
struct TYPE_10__ {scalar_t__ actiondata; } ;


 int MENU_ACTION_RIGHT ;
 int MENU_LIST_HORIZONTAL ;
 int menu_driver_list_cache (TYPE_3__*) ;
 TYPE_4__* menu_entries_get_menu_stack_ptr (int ) ;
 TYPE_4__* menu_entries_get_selection_buf_ptr (int ) ;
 size_t menu_navigation_get_selection () ;
 int stub1 (TYPE_4__*,TYPE_4__*,char*,char*,int ) ;

__attribute__((used)) static int action_right_goto_tab(void)
{
   menu_ctx_list_t list_info;
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
   file_list_t *menu_stack = menu_entries_get_menu_stack_ptr(0);
   size_t selection = menu_navigation_get_selection();
   menu_file_list_cbs_t *cbs = selection_buf ? (menu_file_list_cbs_t*)
      selection_buf->list[selection].actiondata : ((void*)0);

   list_info.type = MENU_LIST_HORIZONTAL;
   list_info.action = MENU_ACTION_RIGHT;

   menu_driver_list_cache(&list_info);

   if (cbs && cbs->action_content_list_switch)
      return cbs->action_content_list_switch(selection_buf, menu_stack,
            "", "", 0);

   return 0;
}
