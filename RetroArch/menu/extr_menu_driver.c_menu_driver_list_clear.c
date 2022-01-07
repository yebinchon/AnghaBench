
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int file_list_t ;
struct TYPE_2__ {int (* list_clear ) (int *) ;} ;


 TYPE_1__* menu_driver_ctx ;
 int stub1 (int *) ;

bool menu_driver_list_clear(file_list_t *list)
{
   if (!list)
      return 0;
   if (menu_driver_ctx->list_clear)
      menu_driver_ctx->list_clear(list);
   return 1;
}
