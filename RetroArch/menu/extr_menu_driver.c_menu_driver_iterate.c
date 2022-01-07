
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int action; } ;
typedef TYPE_1__ menu_ctx_iterate_t ;
struct TYPE_5__ {int (* iterate ) (int ,int ,int ) ;} ;


 int ACTION_OK_DL_CONTENT_SETTINGS ;
 int MENU_SETTINGS ;
 int cpu_features_get_time_usec () ;
 int generic_action_ok_displaylist_push (char*,int *,char*,int ,int ,int ,int ) ;
 int menu_display_set_msg_force (int) ;
 TYPE_3__* menu_driver_ctx ;
 int menu_driver_current_time_us ;
 int menu_driver_data ;
 int menu_driver_pending_quick_menu ;
 scalar_t__ menu_driver_selection_ptr ;
 int menu_entries_flush_stack (int *,int ) ;
 int menu_userdata ;
 int stub1 (int ,int ,int ) ;

bool menu_driver_iterate(menu_ctx_iterate_t *iterate)
{

   menu_driver_current_time_us = cpu_features_get_time_usec();

   if (menu_driver_pending_quick_menu)
   {





      menu_driver_pending_quick_menu = 0;
      menu_entries_flush_stack(((void*)0), MENU_SETTINGS);
      menu_display_set_msg_force(1);

      generic_action_ok_displaylist_push("", ((void*)0),
            "", 0, 0, 0, ACTION_OK_DL_CONTENT_SETTINGS);

      menu_driver_selection_ptr = 0;

      return 1;
   }

   if (
         menu_driver_ctx &&
         menu_driver_ctx->iterate &&
         menu_driver_ctx->iterate(menu_driver_data,
            menu_userdata, iterate->action) != -1)
      return 1;

   return 0;
}
