
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* action_content_list_switch ) (int *,int *,char*,char*,int ) ;} ;
typedef TYPE_2__ menu_file_list_cbs_t ;
struct TYPE_11__ {int active; } ;
typedef TYPE_3__ materialui_nav_bar_menu_tab_t ;
struct TYPE_9__ {int menu_navigation_wrapped; int num_menu_tabs; TYPE_3__* menu_tabs; scalar_t__ active_menu_tab_index; } ;
struct TYPE_12__ {int menu_stack_flushed; TYPE_1__ nav_bar; } ;
typedef TYPE_4__ materialui_handle_t ;
typedef int file_list_t ;
typedef enum menu_action { ____Placeholder_menu_action } menu_action ;




 scalar_t__ file_list_get_actiondata_at_offset (int *,size_t) ;
 int materialui_preswitch_tabs (TYPE_4__*,TYPE_3__*) ;
 int * menu_entries_get_menu_stack_ptr (int ) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 size_t menu_navigation_get_selection () ;
 int stub1 (int *,int *,char*,char*,int ) ;

__attribute__((used)) static int materialui_switch_tabs(
      materialui_handle_t *mui, materialui_nav_bar_menu_tab_t *tab,
      enum menu_action action)
{
   materialui_nav_bar_menu_tab_t *target_tab = tab;



   mui->nav_bar.menu_navigation_wrapped = 0;
   mui->menu_stack_flushed = 0;


   if (!target_tab)
   {
      int target_tab_index = 0;

      switch (action)
      {
         case 129:
            {
               target_tab_index = (int)mui->nav_bar.active_menu_tab_index - 1;

               if (target_tab_index < 0)
               {
                  target_tab_index = (int)mui->nav_bar.num_menu_tabs - 1;
                  mui->nav_bar.menu_navigation_wrapped = 1;
               }
            }
            break;
         case 128:
            {
               target_tab_index = (int)mui->nav_bar.active_menu_tab_index + 1;

               if (target_tab_index >= mui->nav_bar.num_menu_tabs)
               {
                  target_tab_index = 0;
                  mui->nav_bar.menu_navigation_wrapped = 1;
               }
            }
            break;
         default:

            return -1;
      }

      target_tab = &mui->nav_bar.menu_tabs[target_tab_index];
   }


   if (!target_tab->active)
   {
      file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
      file_list_t *menu_stack = menu_entries_get_menu_stack_ptr(0);
      size_t selection = menu_navigation_get_selection();
      menu_file_list_cbs_t *cbs = selection_buf ?
            (menu_file_list_cbs_t*)file_list_get_actiondata_at_offset(
                  selection_buf, selection) : ((void*)0);
      bool stack_flushed = 0;
      int ret = 0;


      if (!selection_buf || !menu_stack || !cbs)
         return -1;

      if (!cbs->action_content_list_switch)
         return -1;


      stack_flushed = materialui_preswitch_tabs(mui, target_tab);


      ret = cbs->action_content_list_switch(
            selection_buf, menu_stack, "", "", 0);
      mui->menu_stack_flushed = stack_flushed;

      return ret;
   }

   return 0;
}
