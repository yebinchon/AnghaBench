
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* get_thumbnail_system ) (int ,char*,size_t) ;} ;


 TYPE_1__* menu_driver_ctx ;
 int menu_userdata ;
 int stub1 (int ,char*,size_t) ;

void menu_driver_get_thumbnail_system(char *s, size_t len)
{
   if (menu_driver_ctx && menu_driver_ctx->get_thumbnail_system)
      menu_driver_ctx->get_thumbnail_system(menu_userdata, s, len);
}
