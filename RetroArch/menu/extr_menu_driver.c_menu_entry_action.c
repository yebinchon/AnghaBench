
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int menu_entry_t ;
typedef enum menu_action { ____Placeholder_menu_action } menu_action ;
struct TYPE_2__ {int (* entry_action ) (int ,int *,size_t,int) ;} ;


 TYPE_1__* menu_driver_ctx ;
 int menu_userdata ;
 int stub1 (int ,int *,size_t,int) ;

int menu_entry_action(
      menu_entry_t *entry, size_t i, enum menu_action action)
{
   if (menu_driver_ctx && menu_driver_ctx->entry_action)
      return menu_driver_ctx->entry_action(
            menu_userdata, entry, i, action);
   return -1;
}
