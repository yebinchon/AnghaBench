
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ menu_navigation_wraparound_enable; } ;
struct TYPE_17__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
typedef int menu_handle_t ;
struct TYPE_18__ {int (* action_content_list_switch ) (TYPE_6__*,TYPE_6__*,char*,char*,int ) ;} ;
typedef TYPE_4__ menu_file_list_cbs_t ;
struct TYPE_19__ {int size; scalar_t__ selection; int action; int type; } ;
typedef TYPE_5__ menu_ctx_list_t ;
struct TYPE_20__ {TYPE_2__* list; } ;
typedef TYPE_6__ file_list_t ;
struct TYPE_16__ {scalar_t__ actiondata; } ;


 int MENU_ACTION_LEFT ;
 int MENU_LIST_HORIZONTAL ;
 int MENU_LIST_PLAIN ;
 int action_left_scroll (int ,char*,int) ;
 TYPE_3__* config_get_ptr () ;
 int menu_cbs_exit () ;
 int * menu_driver_get_ptr () ;
 int menu_driver_list_cache (TYPE_5__*) ;
 int menu_driver_list_get_selection (TYPE_5__*) ;
 int menu_driver_list_get_size (TYPE_5__*) ;
 TYPE_6__* menu_entries_get_menu_stack_ptr (int ) ;
 TYPE_6__* menu_entries_get_selection_buf_ptr (int ) ;
 size_t menu_navigation_get_selection () ;
 int stub1 (TYPE_6__*,TYPE_6__*,char*,char*,int ) ;

__attribute__((used)) static int action_left_mainmenu(unsigned type, const char *label,
      bool wraparound)
{
   menu_ctx_list_t list_info;
   unsigned push_list = 0;
   menu_handle_t *menu = menu_driver_get_ptr();

   if (!menu)
      return menu_cbs_exit();

   menu_driver_list_get_selection(&list_info);

   list_info.type = MENU_LIST_PLAIN;

   menu_driver_list_get_size(&list_info);

   if (list_info.size == 1)
   {
      settings_t *settings = config_get_ptr();

      if ((list_info.selection != 0)
         || settings->bools.menu_navigation_wraparound_enable)
         push_list = 1;
   }
   else
      push_list = 2;

   switch (push_list)
   {
      case 1:
         {
            menu_ctx_list_t list_info;
            file_list_t *menu_stack = menu_entries_get_menu_stack_ptr(0);
            file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
            size_t selection = menu_navigation_get_selection();
            menu_file_list_cbs_t *cbs = selection_buf ?
               (menu_file_list_cbs_t*)
               selection_buf->list[selection].actiondata : ((void*)0);

            list_info.type = MENU_LIST_HORIZONTAL;
            list_info.action = MENU_ACTION_LEFT;

            menu_driver_list_cache(&list_info);

            if (cbs && cbs->action_content_list_switch)
               return cbs->action_content_list_switch(
                     selection_buf, menu_stack, "", "", 0);
         }
         break;
      case 2:
         action_left_scroll(0, "", 0);
         break;
      case 0:
      default:
         break;
   }

   return 0;
}
