
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int content_icon; int icon; } ;
typedef TYPE_1__ xmb_node_t ;
struct TYPE_11__ {float categories_x_pos; float icon_spacing_horizontal; int depth; int x; int icon_size; int horizontal_list; scalar_t__ categories_selection_ptr; } ;
typedef TYPE_2__ xmb_handle_t ;
struct texture_image {int * pixels; int supports_rgba; scalar_t__ height; scalar_t__ width; } ;


 int APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_ICONS ;
 int MENU_LIST_HORIZONTAL ;
 int PATH_MAX_LENGTH ;
 int TEXTURE_FILTER_MIPMAP_LINEAR ;
 int file_list_get_at_offset (int ,unsigned int,char const**,int *,int *,int *) ;
 int fill_pathname_application_special (char*,int,int ) ;
 int fill_pathname_base_noext (char*,char const*,int) ;
 int fill_pathname_join_concat (char*,char*,char*,char*,int) ;
 int fill_pathname_join_delim (char*,char*,char*,char,int) ;
 int free (char*) ;
 int image_texture_free (struct texture_image*) ;
 scalar_t__ image_texture_load (struct texture_image*,char*) ;
 scalar_t__ malloc (int) ;
 int path_is_valid (char*) ;
 int strlcat (char*,char*,int) ;
 int strstr (char const*,char*) ;
 int video_driver_supports_rgba () ;
 int video_driver_texture_load (struct texture_image*,int ,int *) ;
 int video_driver_texture_unload (int *) ;
 TYPE_1__* xmb_get_userdata_from_horizontal_list (TYPE_2__*,unsigned int) ;
 size_t xmb_list_get_size (TYPE_2__*,int ) ;
 TYPE_1__* xmb_node_allocate_userdata (TYPE_2__*,unsigned int) ;
 int xmb_toggle_horizontal_list (TYPE_2__*) ;

__attribute__((used)) static void xmb_context_reset_horizontal_list(
      xmb_handle_t *xmb)
{
   unsigned i;
   int depth;
   size_t list_size =
      xmb_list_get_size(xmb, MENU_LIST_HORIZONTAL);

   xmb->categories_x_pos =
      xmb->icon_spacing_horizontal *
      -(float)xmb->categories_selection_ptr;

   depth = (xmb->depth > 1) ? 2 : 1;
   xmb->x = xmb->icon_size * -(depth*2-2);

   for (i = 0; i < list_size; i++)
   {
      const char *path = ((void*)0);
      xmb_node_t *node =
         xmb_get_userdata_from_horizontal_list(xmb, i);

      if (!node)
      {
         node = xmb_node_allocate_userdata(xmb, i);
         if (!node)
            continue;
      }

      file_list_get_at_offset(xmb->horizontal_list, i,
            &path, ((void*)0), ((void*)0), ((void*)0));

      if (!path)
         continue;

      if (!strstr(path, ".lpl"))
         continue;

      {
         struct texture_image ti;
         char *sysname = (char*)
            malloc(PATH_MAX_LENGTH * sizeof(char));
         char *iconpath = (char*)
            malloc(PATH_MAX_LENGTH * sizeof(char));
         char *texturepath = (char*)
            malloc(PATH_MAX_LENGTH * sizeof(char));
         char *content_texturepath = (char*)
            malloc(PATH_MAX_LENGTH * sizeof(char));

         iconpath[0] = sysname[0] =
            texturepath[0] = content_texturepath[0] = '\0';

         fill_pathname_base_noext(sysname, path,
               PATH_MAX_LENGTH * sizeof(char));

         fill_pathname_application_special(iconpath,
               PATH_MAX_LENGTH * sizeof(char),
               APPLICATION_SPECIAL_DIRECTORY_ASSETS_XMB_ICONS);

         fill_pathname_join_concat(texturepath, iconpath, sysname,
               ".png",
               PATH_MAX_LENGTH * sizeof(char));



         if (!path_is_valid(texturepath))
               fill_pathname_join_concat(texturepath, iconpath, "default",
               ".png",
               PATH_MAX_LENGTH * sizeof(char));

         ti.width = 0;
         ti.height = 0;
         ti.pixels = ((void*)0);
         ti.supports_rgba = video_driver_supports_rgba();

         if (image_texture_load(&ti, texturepath))
         {
            if (ti.pixels)
            {
               video_driver_texture_unload(&node->icon);
               video_driver_texture_load(&ti,
                     TEXTURE_FILTER_MIPMAP_LINEAR, &node->icon);
            }

            image_texture_free(&ti);
         }

         fill_pathname_join_delim(sysname, sysname, "content.png",
               '-', PATH_MAX_LENGTH * sizeof(char));
         strlcat(content_texturepath, iconpath, PATH_MAX_LENGTH * sizeof(char));
         strlcat(content_texturepath, sysname, PATH_MAX_LENGTH * sizeof(char));



         if (!path_is_valid(content_texturepath))
         {
            strlcat(iconpath, "default", PATH_MAX_LENGTH * sizeof(char));
            fill_pathname_join_delim(content_texturepath, iconpath,
                  "content.png", '-',
                  PATH_MAX_LENGTH * sizeof(char));
         }

         if (image_texture_load(&ti, content_texturepath))
         {
            if (ti.pixels)
            {
               video_driver_texture_unload(&node->content_icon);
               video_driver_texture_load(&ti,
                     TEXTURE_FILTER_MIPMAP_LINEAR, &node->content_icon);
            }

            image_texture_free(&ti);
         }

         free(sysname);
         free(iconpath);
         free(texturepath);
         free(content_texturepath);
      }
   }

   xmb_toggle_horizontal_list(xmb);
}
