
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct string_list {size_t size; TYPE_3__* elems; } ;
struct TYPE_8__ {int show_hidden_files; scalar_t__ menu_content_show_video; scalar_t__ menu_content_show_music; scalar_t__ menu_content_show_images; scalar_t__ menu_content_show_favorites; scalar_t__ menu_content_show_add; } ;
struct TYPE_11__ {TYPE_1__ bools; } ;
typedef TYPE_4__ settings_t ;
struct TYPE_12__ {char* path; int list; int type_default; } ;
typedef TYPE_5__ menu_displaylist_info_t ;
typedef enum msg_file_type { ____Placeholder_msg_file_type } msg_file_type ;
struct TYPE_9__ {int i; } ;
struct TYPE_10__ {char* data; TYPE_2__ attr; } ;


 int FILE_PATH_CONTENT_FAVORITES ;
 int FILE_PATH_CONTENT_HISTORY ;
 int FILE_PATH_CONTENT_IMAGE_HISTORY ;
 int FILE_PATH_CONTENT_MUSIC_HISTORY ;
 int FILE_PATH_CONTENT_VIDEO_HISTORY ;
 int FILE_TYPE_DIRECTORY ;
 int FILE_TYPE_NONE ;
 int FILE_TYPE_PLAYLIST_COLLECTION ;
 int MENU_ENUM_LABEL_GOTO_FAVORITES ;
 int MENU_ENUM_LABEL_GOTO_IMAGES ;
 int MENU_ENUM_LABEL_GOTO_MUSIC ;
 int MENU_ENUM_LABEL_GOTO_VIDEO ;
 int MENU_ENUM_LABEL_PLAYLIST_COLLECTION_ENTRY ;
 int MENU_ENUM_LABEL_SCAN_DIRECTORY ;
 int MENU_ENUM_LABEL_SCAN_FILE ;
 int MENU_ENUM_LABEL_VALUE_GOTO_FAVORITES ;
 int MENU_ENUM_LABEL_VALUE_GOTO_IMAGES ;
 int MENU_ENUM_LABEL_VALUE_GOTO_MUSIC ;
 int MENU_ENUM_LABEL_VALUE_GOTO_VIDEO ;
 int MENU_ENUM_LABEL_VALUE_SCAN_DIRECTORY ;
 int MENU_ENUM_LABEL_VALUE_SCAN_FILE ;
 int MENU_SETTING_ACTION ;
 int MSG_UNKNOWN ;


 TYPE_4__* config_get_ptr () ;
 struct string_list* dir_list_new (char const*,int *,int,int ,int,int) ;
 int dir_list_sort (struct string_list*,int) ;
 int file_path_str (int ) ;
 int frontend_driver_parse_drive_list (int ,int) ;
 scalar_t__ menu_entries_append_enum (int ,char const*,char*,int ,int,int ,int ) ;
 char* msg_hash_to_str (int ) ;
 char* path_basename (char const*) ;
 int path_get_extension (char const*) ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,int ) ;
 int string_is_equal_noncase (int ,char*) ;
 int string_list_free (struct string_list*) ;

__attribute__((used)) static unsigned menu_displaylist_parse_playlists(
      menu_displaylist_info_t *info, bool horizontal)
{
   size_t i, list_size;
   struct string_list *str_list = ((void*)0);
   unsigned count = 0;
   settings_t *settings = config_get_ptr();
   const char *path = info->path;

   if (string_is_empty(path))
   {
      int ret = frontend_driver_parse_drive_list(info->list, 1);

      if (ret == 0)
         count++;
      else
         if (menu_entries_append_enum(info->list, "/", "",
               MSG_UNKNOWN, FILE_TYPE_DIRECTORY, 0, 0))
            count++;
      return count;
   }

   if (!horizontal)
   {
     if (settings->bools.menu_content_show_favorites)
      if (menu_entries_append_enum(info->list,
            msg_hash_to_str(MENU_ENUM_LABEL_VALUE_GOTO_FAVORITES),
            msg_hash_to_str(MENU_ENUM_LABEL_GOTO_FAVORITES),
            MENU_ENUM_LABEL_GOTO_FAVORITES,
            MENU_SETTING_ACTION, 0, 0))
         count++;
     if (settings->bools.menu_content_show_images)
      if (menu_entries_append_enum(info->list,
            msg_hash_to_str(MENU_ENUM_LABEL_VALUE_GOTO_IMAGES),
            msg_hash_to_str(MENU_ENUM_LABEL_GOTO_IMAGES),
            MENU_ENUM_LABEL_GOTO_IMAGES,
            MENU_SETTING_ACTION, 0, 0))
         count++;

     if (settings->bools.menu_content_show_music)
      if (menu_entries_append_enum(info->list,
            msg_hash_to_str(MENU_ENUM_LABEL_VALUE_GOTO_MUSIC),
            msg_hash_to_str(MENU_ENUM_LABEL_GOTO_MUSIC),
            MENU_ENUM_LABEL_GOTO_MUSIC,
            MENU_SETTING_ACTION, 0, 0))
         count++;
   }

   str_list = dir_list_new(path, ((void*)0), 1,
         settings->bools.show_hidden_files, 1, 0);

   if (!str_list)
      return count;

   dir_list_sort(str_list, 1);

   list_size = str_list->size;

   for (i = 0; i < list_size; i++)
   {
      const char *path = str_list->elems[i].data;
      const char *playlist_file = ((void*)0);
      enum msg_file_type file_type = FILE_TYPE_NONE;

      switch (str_list->elems[i].attr.i)
      {
         case 129:
            file_type = FILE_TYPE_DIRECTORY;
            break;
         case 128:
         default:
            file_type = (enum msg_file_type)info->type_default;
            break;
      }

      if (file_type == FILE_TYPE_DIRECTORY)
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

      file_type = FILE_TYPE_PLAYLIST_COLLECTION;

      if (horizontal)
         path = playlist_file;

      if (menu_entries_append_enum(info->list, path, "",
            MENU_ENUM_LABEL_PLAYLIST_COLLECTION_ENTRY,
            file_type, 0, 0))
         count++;
   }

   string_list_free(str_list);

   return count;
}
