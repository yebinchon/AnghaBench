
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int label; int path; } ;
typedef TYPE_1__ menu_displaylist_info_t ;
struct TYPE_5__ {int (* populate_entries ) (int ,int ,int ,int ) ;} ;


 TYPE_3__* menu_driver_ctx ;
 int menu_userdata ;
 int stub1 (int ,int ,int ,int ) ;

void menu_driver_populate_entries(menu_displaylist_info_t *info)
{
   if (menu_driver_ctx && menu_driver_ctx->populate_entries)
      menu_driver_ctx->populate_entries(
            menu_userdata, info->path,
            info->label, info->type);
}
