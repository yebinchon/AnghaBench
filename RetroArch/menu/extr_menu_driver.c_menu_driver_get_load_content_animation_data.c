
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int menu_texture_item ;
struct TYPE_2__ {scalar_t__ (* get_load_content_animation_data ) (int ,int *,char**) ;} ;


 TYPE_1__* menu_driver_ctx ;
 int menu_userdata ;
 scalar_t__ stub1 (int ,int *,char**) ;

bool menu_driver_get_load_content_animation_data(menu_texture_item *icon, char **playlist_name)
{
   return menu_driver_ctx && menu_driver_ctx->get_load_content_animation_data
      && menu_driver_ctx->get_load_content_animation_data(menu_userdata, icon, playlist_name);
}
