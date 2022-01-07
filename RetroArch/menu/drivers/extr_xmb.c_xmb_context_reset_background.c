
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* path_menu_wallpaper; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;


 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*) ;
 TYPE_2__* config_get_ptr () ;
 int fill_pathname_join (char*,char const*,char*,int) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int menu_display_handle_wallpaper_upload ;
 scalar_t__ path_is_valid (char*) ;
 int sleep (int) ;
 char* strdup (char const*) ;
 int string_is_empty (char const*) ;
 int task_push_image_load (char*,int ,int ,int ,int *) ;
 int video_driver_supports_rgba () ;

__attribute__((used)) static void xmb_context_reset_background(const char *iconpath)
{
   char *path = ((void*)0);
   settings_t *settings = config_get_ptr();
   const char *path_menu_wp = settings->paths.path_menu_wallpaper;

   if (!string_is_empty(path_menu_wp))
      path = strdup(path_menu_wp);
   else if (!string_is_empty(iconpath))
   {
      path = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
      path[0] = '\0';

      fill_pathname_join(path, iconpath, "bg.png",
            PATH_MAX_LENGTH * sizeof(char));
   }

   if (path_is_valid(path))
      task_push_image_load(path,
            video_driver_supports_rgba(), 0,
            menu_display_handle_wallpaper_upload, ((void*)0));






   if (path)
      free(path);
}
