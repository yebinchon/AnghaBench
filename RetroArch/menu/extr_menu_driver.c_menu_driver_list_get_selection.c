
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ selection; } ;
typedef TYPE_1__ menu_ctx_list_t ;
struct TYPE_5__ {scalar_t__ (* list_get_selection ) (int ) ;} ;


 TYPE_3__* menu_driver_ctx ;
 int menu_userdata ;
 scalar_t__ stub1 (int ) ;

bool menu_driver_list_get_selection(menu_ctx_list_t *list)
{
   if (!menu_driver_ctx || !menu_driver_ctx->list_get_selection)
   {
      list->selection = 0;
      return 0;
   }
   list->selection = menu_driver_ctx->list_get_selection(menu_userdata);

   return 1;
}
