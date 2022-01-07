
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; scalar_t__ size; } ;
typedef TYPE_1__ menu_ctx_list_t ;
struct TYPE_5__ {scalar_t__ (* list_get_size ) (int ,int ) ;} ;


 TYPE_3__* menu_driver_ctx ;
 int menu_userdata ;
 scalar_t__ stub1 (int ,int ) ;

bool menu_driver_list_get_size(menu_ctx_list_t *list)
{
   if (!menu_driver_ctx || !menu_driver_ctx->list_get_size)
   {
      list->size = 0;
      return 0;
   }
   list->size = menu_driver_ctx->list_get_size(menu_userdata, list->type);
   return 1;
}
