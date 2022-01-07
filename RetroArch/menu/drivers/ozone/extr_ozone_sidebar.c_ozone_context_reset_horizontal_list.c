
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int title_noext ;
struct texture_image {int * pixels; int supports_rgba; scalar_t__ height; scalar_t__ width; } ;
struct TYPE_9__ {scalar_t__ ozone_truncate_playlist_name; } ;
struct TYPE_10__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_11__ {char* console_name; int content_icon; int icon; } ;
typedef TYPE_3__ ozone_node_t ;
struct TYPE_12__ {int horizontal_list; int icons_path; } ;
typedef TYPE_4__ ozone_handle_t ;


 int MENU_LIST_HORIZONTAL ;
 int PATH_MAX_LENGTH ;
 int TEXTURE_FILTER_MIPMAP_LINEAR ;
 TYPE_2__* config_get_ptr () ;
 int file_list_get_at_offset (int ,unsigned int,char const**,int *,int *,int *) ;
 scalar_t__ file_list_get_userdata_at_offset (int ,unsigned int) ;
 int fill_pathname_base_noext (char*,char const*,int) ;
 int fill_pathname_join_concat (char*,char*,char*,char*,int) ;
 int fill_pathname_join_delim (char*,char*,char*,char,int) ;
 int free (char*) ;
 int image_texture_free (struct texture_image*) ;
 scalar_t__ image_texture_load (struct texture_image*,char*) ;
 scalar_t__ malloc (int) ;
 int menu_entries_get_at_offset (int ,unsigned int,char const**,int *,int *,int *,int *) ;
 TYPE_3__* ozone_alloc_node () ;
 size_t ozone_list_get_size (TYPE_4__*,int ) ;
 char* path_default_slash () ;
 int path_is_valid (char*) ;
 char* strdup (char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,int ,int) ;
 int strstr (char const*,char*) ;
 int video_driver_supports_rgba () ;
 int video_driver_texture_load (struct texture_image*,int ,int *) ;
 int video_driver_texture_unload (int *) ;

void ozone_context_reset_horizontal_list(ozone_handle_t *ozone)
{
   unsigned i;
   const char *title;
   char title_noext[255];
   char *chr;
   bool hyphen_found;
   settings_t *settings = config_get_ptr();

   size_t list_size = ozone_list_get_size(ozone, MENU_LIST_HORIZONTAL);

   for (i = 0; i < list_size; i++)
   {
      const char *path = ((void*)0);
      ozone_node_t *node = (ozone_node_t*)file_list_get_userdata_at_offset(ozone->horizontal_list, i);

      if (!node)
      {
         node = ozone_alloc_node();
         if (!node)
            continue;
      }

      file_list_get_at_offset(ozone->horizontal_list, i,
            &path, ((void*)0), ((void*)0), ((void*)0));

      if (!path)
         continue;

      if (!strstr(path, ".lpl"))
         continue;

      {
         struct texture_image ti;
         char *sysname = (char*)
            malloc(PATH_MAX_LENGTH * sizeof(char));
         char *texturepath = (char*)
            malloc(PATH_MAX_LENGTH * sizeof(char));
         char *content_texturepath = (char*)
            malloc(PATH_MAX_LENGTH * sizeof(char));
         char *icons_path = (char*)
            malloc(PATH_MAX_LENGTH * sizeof(char));

         strlcpy(icons_path, ozone->icons_path, PATH_MAX_LENGTH * sizeof(char));

         sysname[0] = texturepath[0] = content_texturepath[0] = '\0';

         fill_pathname_base_noext(sysname, path,
               PATH_MAX_LENGTH * sizeof(char));

         fill_pathname_join_concat(texturepath, icons_path, sysname,
               ".png",
               PATH_MAX_LENGTH * sizeof(char));



         if (!path_is_valid(texturepath))
               fill_pathname_join_concat(texturepath, icons_path, "default",
               ".png",
               PATH_MAX_LENGTH * sizeof(char));

         ti.width = 0;
         ti.height = 0;
         ti.pixels = ((void*)0);
         ti.supports_rgba = video_driver_supports_rgba();

         if (image_texture_load(&ti, texturepath))
         {
            if(ti.pixels)
            {
               video_driver_texture_unload(&node->icon);
               video_driver_texture_load(&ti,
                     TEXTURE_FILTER_MIPMAP_LINEAR, &node->icon);
            }

            image_texture_free(&ti);
         }

         fill_pathname_join_delim(sysname, sysname,
               "content.png", '-',
               PATH_MAX_LENGTH * sizeof(char));
         strlcat(content_texturepath, icons_path, PATH_MAX_LENGTH * sizeof(char));

         strlcat(content_texturepath, path_default_slash(), PATH_MAX_LENGTH * sizeof(char));
         strlcat(content_texturepath, sysname, PATH_MAX_LENGTH * sizeof(char));


         if (!path_is_valid(content_texturepath))
         {
            strlcat(icons_path, path_default_slash(), PATH_MAX_LENGTH * sizeof(char));
            strlcat(icons_path, "default", PATH_MAX_LENGTH * sizeof(char));
            fill_pathname_join_delim(content_texturepath, icons_path,
                  "content.png", '-',
                  PATH_MAX_LENGTH * sizeof(char));
         }

         if (image_texture_load(&ti, content_texturepath))
         {
            if(ti.pixels)
            {
               video_driver_texture_unload(&node->content_icon);
               video_driver_texture_load(&ti,
                     TEXTURE_FILTER_MIPMAP_LINEAR, &node->content_icon);
            }

            image_texture_free(&ti);
         }


         menu_entries_get_at_offset(
            ozone->horizontal_list,
            i,
            &title, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

         fill_pathname_base_noext(title_noext, title, sizeof(title_noext));




         chr = title_noext;
         hyphen_found = 0;

         while (settings->bools.ozone_truncate_playlist_name)
         {

            if (*chr == '-' && *(chr + 1) == ' ')
            {
               hyphen_found = 1;
               break;
            }
            else if (*chr == '\0')
               break;

            chr++;
         }

         if (hyphen_found)
            chr += 2;
         else
            chr = title_noext;

         if (node->console_name)
            free(node->console_name);

         node->console_name = strdup(chr);

         free(sysname);
         free(texturepath);
         free(content_texturepath);
         free(icons_path);
      }
   }
}
