
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int info; } ;
typedef TYPE_1__ menu_ctx_displaylist_t ;
struct TYPE_5__ {scalar_t__ (* list_push ) (int ,int ,int ,int ) ;} ;


 TYPE_3__* menu_driver_ctx ;
 int menu_driver_data ;
 int menu_userdata ;
 scalar_t__ stub1 (int ,int ,int ,int ) ;

bool menu_driver_push_list(menu_ctx_displaylist_t *disp_list)
{
   if (menu_driver_ctx->list_push)
      if (menu_driver_ctx->list_push(menu_driver_data,
               menu_userdata, disp_list->info, disp_list->type) == 0)
         return 1;
   return 0;
}
