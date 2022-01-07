
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entry_type; int idx; int label; int fullpath; int path; int list; } ;
typedef TYPE_1__ menu_ctx_list_t ;
struct TYPE_5__ {int (* list_insert ) (int ,int ,int ,int ,int ,int ,int ) ;} ;


 TYPE_3__* menu_driver_ctx ;
 int menu_userdata ;
 int stub1 (int ,int ,int ,int ,int ,int ,int ) ;

bool menu_driver_list_insert(menu_ctx_list_t *list)
{
   if (!list || !menu_driver_ctx || !menu_driver_ctx->list_insert)
      return 0;
   menu_driver_ctx->list_insert(menu_userdata,
         list->list, list->path, list->fullpath,
         list->label, list->idx, list->entry_type);

   return 1;
}
