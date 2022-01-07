
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int data; } ;
typedef TYPE_1__ menu_ctx_load_image_t ;
struct TYPE_5__ {int (* load_image ) (int ,int ,int ) ;} ;


 TYPE_3__* menu_driver_ctx ;
 int menu_userdata ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static bool menu_driver_load_image(menu_ctx_load_image_t *load_image_info)
{
   if (menu_driver_ctx && menu_driver_ctx->load_image)
      return menu_driver_ctx->load_image(menu_userdata,
            load_image_info->data, load_image_info->type);
   return 0;
}
