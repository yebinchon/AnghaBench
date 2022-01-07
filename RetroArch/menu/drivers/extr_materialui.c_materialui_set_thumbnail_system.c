
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thumbnail_path_data; } ;
typedef TYPE_1__ materialui_handle_t ;


 int menu_thumbnail_set_system (int ,char*,int ) ;
 int playlist_get_cached () ;

__attribute__((used)) static void materialui_set_thumbnail_system(void *userdata, char *s, size_t len)
{
   materialui_handle_t *mui = (materialui_handle_t*)userdata;
   if (!mui)
      return;
   menu_thumbnail_set_system(
         mui->thumbnail_path_data, s, playlist_get_cached());
}
