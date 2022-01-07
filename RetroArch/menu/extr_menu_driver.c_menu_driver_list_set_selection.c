
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int file_list_t ;
struct TYPE_2__ {int (* list_set_selection ) (int ,int *) ;} ;


 TYPE_1__* menu_driver_ctx ;
 int menu_userdata ;
 int stub1 (int ,int *) ;

bool menu_driver_list_set_selection(file_list_t *list)
{
   if (!list)
      return 0;

   if (!menu_driver_ctx || !menu_driver_ctx->list_set_selection)
      return 0;

   menu_driver_ctx->list_set_selection(menu_userdata, list);
   return 1;
}
