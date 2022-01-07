
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int content_icon; int icon; } ;
typedef TYPE_1__ ozone_node_t ;
struct TYPE_6__ {int horizontal_list; } ;
typedef TYPE_2__ ozone_handle_t ;


 int MENU_LIST_HORIZONTAL ;
 int file_list_get_at_offset (int ,unsigned int,char const**,int *,int *,int *) ;
 scalar_t__ file_list_get_userdata_at_offset (int ,unsigned int) ;
 size_t ozone_list_get_size (TYPE_2__*,int ) ;
 int strstr (char const*,char*) ;
 int video_driver_texture_unload (int *) ;

void ozone_context_destroy_horizontal_list(ozone_handle_t *ozone)
{
   unsigned i;
   size_t list_size = ozone_list_get_size(ozone, MENU_LIST_HORIZONTAL);

   for (i = 0; i < list_size; i++)
   {
      const char *path = ((void*)0);
      ozone_node_t *node = (ozone_node_t*)file_list_get_userdata_at_offset(ozone->horizontal_list, i);

      if (!node)
         continue;

      file_list_get_at_offset(ozone->horizontal_list, i,
            &path, ((void*)0), ((void*)0), ((void*)0));

      if (!path || !strstr(path, ".lpl"))
         continue;

      video_driver_texture_unload(&node->icon);
      video_driver_texture_unload(&node->content_icon);
   }
}
