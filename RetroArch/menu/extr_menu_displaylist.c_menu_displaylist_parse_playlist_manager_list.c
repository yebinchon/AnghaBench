
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct string_list {unsigned int size; TYPE_3__* elems; } ;
struct TYPE_13__ {scalar_t__ history_list_enable; } ;
struct TYPE_10__ {int directory_playlist; } ;
struct TYPE_14__ {TYPE_4__ bools; TYPE_1__ paths; } ;
typedef TYPE_5__ settings_t ;
struct TYPE_15__ {int list; } ;
typedef TYPE_6__ menu_displaylist_info_t ;
struct TYPE_16__ {scalar_t__ content_favorites; scalar_t__ content_history; } ;
struct TYPE_11__ {scalar_t__ i; } ;
struct TYPE_12__ {char* data; TYPE_2__ attr; } ;


 int DIR_LIST_COLLECTIONS ;
 int FILE_PATH_CONTENT_FAVORITES ;
 int FILE_PATH_CONTENT_HISTORY ;
 int FILE_PATH_CONTENT_IMAGE_HISTORY ;
 int FILE_PATH_CONTENT_MUSIC_HISTORY ;
 int FILE_PATH_CONTENT_VIDEO_HISTORY ;
 scalar_t__ FILE_TYPE_DIRECTORY ;
 int MENU_ENUM_LABEL_PLAYLIST_MANAGER_SETTINGS ;
 int MENU_SETTING_ACTION ;
 TYPE_5__* config_get_ptr () ;
 struct string_list* dir_list_new_special (int ,int ,int *) ;
 int dir_list_sort (struct string_list*,int) ;
 int file_path_str (int ) ;
 TYPE_8__ g_defaults ;
 scalar_t__ menu_entries_append_enum (int ,char const*,char*,int ,int ,int ,int ) ;
 char* path_basename (char const*) ;
 int path_get_extension (char const*) ;
 char const* playlist_get_conf_path (scalar_t__) ;
 scalar_t__ playlist_size (scalar_t__) ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,int ) ;
 int string_is_equal_noncase (int ,char*) ;
 int string_list_free (struct string_list*) ;

__attribute__((used)) static unsigned menu_displaylist_parse_playlist_manager_list(
      menu_displaylist_info_t *info)
{
   settings_t *settings = config_get_ptr();
   unsigned count = 0;
   struct string_list *str_list = ((void*)0);

   if (!settings)
      return count;


   str_list = dir_list_new_special(
         settings->paths.directory_playlist,
         DIR_LIST_COLLECTIONS, ((void*)0));

   if (str_list && str_list->size)
   {
      unsigned i;

      dir_list_sort(str_list, 1);

      for (i = 0; i < str_list->size; i++)
      {
         const char *path = str_list->elems[i].data;
         const char *playlist_file = ((void*)0);

         if (str_list->elems[i].attr.i == FILE_TYPE_DIRECTORY)
            continue;

         if (string_is_empty(path))
            continue;

         playlist_file = path_basename(path);

         if (string_is_empty(playlist_file))
            continue;


         if (!string_is_equal_noncase(path_get_extension(playlist_file),
                  "lpl"))
            continue;




         if (string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_HISTORY)) ||
             string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_MUSIC_HISTORY)) ||
             string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_VIDEO_HISTORY)) ||
             string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_IMAGE_HISTORY)) ||
             string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_FAVORITES)))
            continue;

         menu_entries_append_enum(info->list,
               path,
               "",
               MENU_ENUM_LABEL_PLAYLIST_MANAGER_SETTINGS,
               MENU_SETTING_ACTION,
               0, 0);
         count++;
      }
   }


   string_list_free(str_list);


   if (settings->bools.history_list_enable)
      if (g_defaults.content_history)
         if (playlist_size(g_defaults.content_history) > 0)
            if (menu_entries_append_enum(info->list,
                  playlist_get_conf_path(g_defaults.content_history),
                  "",
                  MENU_ENUM_LABEL_PLAYLIST_MANAGER_SETTINGS,
                  MENU_SETTING_ACTION,
                  0, 0))
               count++;


   if (g_defaults.content_favorites)
      if (playlist_size(g_defaults.content_favorites) > 0)
         if (menu_entries_append_enum(info->list,
               playlist_get_conf_path(g_defaults.content_favorites),
               "",
               MENU_ENUM_LABEL_PLAYLIST_MANAGER_SETTINGS,
               MENU_SETTING_ACTION,
               0, 0))
            count++;

   return count;
}
