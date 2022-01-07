
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int content_icon; int icon; } ;
typedef TYPE_1__ stripes_node_t ;
struct TYPE_8__ {int horizontal_list; } ;
typedef TYPE_2__ stripes_handle_t ;


 int MENU_LIST_HORIZONTAL ;
 int file_list_get_at_offset (int ,unsigned int,char const**,int *,int *,int *) ;
 TYPE_1__* stripes_get_userdata_from_horizontal_list (TYPE_2__*,unsigned int) ;
 size_t stripes_list_get_size (TYPE_2__*,int ) ;
 int strstr (char const*,char*) ;
 int video_driver_texture_unload (int *) ;

__attribute__((used)) static void stripes_context_destroy_horizontal_list(stripes_handle_t *stripes)
{
   unsigned i;
   size_t list_size = stripes_list_get_size(stripes, MENU_LIST_HORIZONTAL);

   for (i = 0; i < list_size; i++)
   {
      const char *path = ((void*)0);
      stripes_node_t *node = stripes_get_userdata_from_horizontal_list(stripes, i);

      if (!node)
         continue;

      file_list_get_at_offset(stripes->horizontal_list, i,
            &path, ((void*)0), ((void*)0), ((void*)0));

      if (!path || !strstr(path, ".lpl"))
         continue;

      video_driver_texture_unload(&node->icon);
      video_driver_texture_unload(&node->content_icon);
   }
}
