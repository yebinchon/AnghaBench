
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ idx; int type; int * entry; } ;
typedef TYPE_1__ menu_ctx_list_t ;
struct TYPE_5__ {int * (* list_get_entry ) (int ,int ,unsigned int) ;} ;


 TYPE_3__* menu_driver_ctx ;
 int menu_userdata ;
 int * stub1 (int ,int ,unsigned int) ;

bool menu_driver_list_get_entry(menu_ctx_list_t *list)
{
   if (!menu_driver_ctx || !menu_driver_ctx->list_get_entry)
   {
      list->entry = ((void*)0);
      return 0;
   }
   list->entry = menu_driver_ctx->list_get_entry(menu_userdata,
         list->type, (unsigned int)list->idx);
   return 1;
}
