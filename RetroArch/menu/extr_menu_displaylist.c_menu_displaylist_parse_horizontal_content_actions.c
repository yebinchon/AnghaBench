
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int system ;
struct playlist_entry {char* path; } ;
struct TYPE_12__ {int kiosk_mode_enable; scalar_t__ quick_menu_show_download_thumbnails; scalar_t__ quick_menu_show_information; scalar_t__ quick_menu_show_reset_core_association; scalar_t__ quick_menu_show_set_core_association; scalar_t__ quick_menu_show_add_to_favorites; scalar_t__ playlist_entry_rename; } ;
struct TYPE_11__ {scalar_t__ playlist_entry_remove_enable; } ;
struct TYPE_13__ {TYPE_2__ bools; TYPE_1__ uints; } ;
typedef TYPE_3__ settings_t ;
typedef int playlist_t ;
struct TYPE_14__ {unsigned int rpl_entry_selection_ptr; char* deferred_path; } ;
typedef TYPE_4__ menu_handle_t ;
struct TYPE_15__ {int list; } ;
typedef TYPE_5__ menu_displaylist_info_t ;


 int FILE_PATH_CONTENT_FAVORITES ;
 int FILE_PATH_CONTENT_HISTORY ;
 int FILE_TYPE_PLAYLIST_ENTRY ;
 int MENU_ENUM_LABEL_ADD_TO_FAVORITES_PLAYLIST ;
 int MENU_ENUM_LABEL_ADD_TO_MIXER ;
 int MENU_ENUM_LABEL_ADD_TO_MIXER_AND_PLAY ;
 int MENU_ENUM_LABEL_DELETE_ENTRY ;
 int MENU_ENUM_LABEL_DOWNLOAD_PL_ENTRY_THUMBNAILS ;
 int MENU_ENUM_LABEL_INFORMATION ;
 int MENU_ENUM_LABEL_RENAME_ENTRY ;
 int MENU_ENUM_LABEL_RESET_CORE_ASSOCIATION ;
 int MENU_ENUM_LABEL_RUN ;
 int MENU_ENUM_LABEL_SET_CORE_ASSOCIATION ;
 int MENU_ENUM_LABEL_VALUE_ADD_TO_FAVORITES_PLAYLIST ;
 int MENU_ENUM_LABEL_VALUE_ADD_TO_MIXER ;
 int MENU_ENUM_LABEL_VALUE_ADD_TO_MIXER_AND_PLAY ;
 int MENU_ENUM_LABEL_VALUE_DELETE_ENTRY ;
 int MENU_ENUM_LABEL_VALUE_DOWNLOAD_PL_ENTRY_THUMBNAILS ;
 int MENU_ENUM_LABEL_VALUE_INFORMATION ;
 int MENU_ENUM_LABEL_VALUE_RENAME_ENTRY ;
 int MENU_ENUM_LABEL_VALUE_RESET_CORE_ASSOCIATION ;
 int MENU_ENUM_LABEL_VALUE_RUN ;
 int MENU_ENUM_LABEL_VALUE_SET_CORE_ASSOCIATION ;
 int MENU_SETTING_ACTION ;
 int MENU_SETTING_ACTION_DELETE_ENTRY ;
 int PATH_MAX_LENGTH ;
 scalar_t__ PLAYLIST_ENTRY_REMOVE_ENABLE_ALL ;
 scalar_t__ PLAYLIST_ENTRY_REMOVE_ENABLE_HIST_FAV ;
 int RARCH_CTL_IS_DUMMY_CORE ;
 int RARCH_PATH_CONTENT ;
 int RARCH_PATH_CORE ;
 scalar_t__ audio_driver_mixer_extension_supported (char const*) ;
 TYPE_3__* config_get_ptr () ;
 char* file_path_str (int ) ;
 int menu_displaylist_parse_load_content_settings (TYPE_4__*,TYPE_5__*) ;
 int menu_driver_get_thumbnail_system (char*,int) ;
 int menu_entries_append_enum (int ,int ,int ,int ,int ,int ,unsigned int) ;
 int msg_hash_to_str (int ) ;
 char* path_basename (char const*) ;
 char* path_get (int ) ;
 char* path_get_extension (char*) ;
 int * playlist_get_cached () ;
 char* playlist_get_conf_path (int *) ;
 int playlist_get_index (int *,unsigned int,struct playlist_entry const**) ;
 int playlist_index_is_valid (int *,unsigned int,char const*,char const*) ;
 int rarch_ctl (int ,int *) ;
 int string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,char const*) ;

__attribute__((used)) static int menu_displaylist_parse_horizontal_content_actions(
      menu_handle_t *menu,
      menu_displaylist_info_t *info)
{
   bool content_loaded = 0;
   playlist_t *playlist = playlist_get_cached();
   settings_t *settings = config_get_ptr();
   const char *fullpath = path_get(RARCH_PATH_CONTENT);
   unsigned idx = menu->rpl_entry_selection_ptr;
   const struct playlist_entry *entry = ((void*)0);

   if (playlist)
      playlist_get_index(playlist, idx, &entry);

   content_loaded = !rarch_ctl(RARCH_CTL_IS_DUMMY_CORE, ((void*)0))
         && string_is_equal(menu->deferred_path, fullpath);

   if (content_loaded)
      menu_displaylist_parse_load_content_settings(menu, info);
   else
   {
      menu_entries_append_enum(info->list,
            msg_hash_to_str(MENU_ENUM_LABEL_VALUE_RUN),
            msg_hash_to_str(MENU_ENUM_LABEL_RUN),
            MENU_ENUM_LABEL_RUN, FILE_TYPE_PLAYLIST_ENTRY, 0, idx);

      if (settings->bools.playlist_entry_rename &&
            !settings->bools.kiosk_mode_enable)
         menu_entries_append_enum(info->list,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_RENAME_ENTRY),
               msg_hash_to_str(MENU_ENUM_LABEL_RENAME_ENTRY),
               MENU_ENUM_LABEL_RENAME_ENTRY,
               FILE_TYPE_PLAYLIST_ENTRY, 0, idx);

      if (!settings->bools.kiosk_mode_enable)
      {
         bool remove_entry_enabled = 0;

         if (settings->uints.playlist_entry_remove_enable == PLAYLIST_ENTRY_REMOVE_ENABLE_ALL)
            remove_entry_enabled = 1;
         else if (settings->uints.playlist_entry_remove_enable == PLAYLIST_ENTRY_REMOVE_ENABLE_HIST_FAV)
         {
            char system[PATH_MAX_LENGTH];
            system[0] = '\0';

            menu_driver_get_thumbnail_system(system, sizeof(system));

            if (!string_is_empty(system))
               remove_entry_enabled = string_is_equal(system, "history") ||
                                      string_is_equal(system, "favorites") ||
                                      string_is_equal(system, "images_history") ||
                                      string_is_equal(system, "music_history") ||
                                      string_is_equal(system, "video_history");






            if (!remove_entry_enabled && settings->bools.quick_menu_show_information)
            {
               const char *playlist_path = playlist_get_conf_path(playlist);

               if (!string_is_empty(playlist_path))
               {
                  const char *playlist_file = path_basename(playlist_path);

                  if (!string_is_empty(playlist_file))
                     remove_entry_enabled = string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_HISTORY)) ||
                                            string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_FAVORITES));
               }
            }
         }

         if (remove_entry_enabled)
            menu_entries_append_enum(info->list,
                  msg_hash_to_str(MENU_ENUM_LABEL_VALUE_DELETE_ENTRY),
                  msg_hash_to_str(MENU_ENUM_LABEL_DELETE_ENTRY),
                  MENU_ENUM_LABEL_DELETE_ENTRY,
                  MENU_SETTING_ACTION_DELETE_ENTRY, 0, 0);
      }

      if (settings->bools.quick_menu_show_add_to_favorites)
      {
         menu_entries_append_enum(info->list,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_ADD_TO_FAVORITES_PLAYLIST),
               msg_hash_to_str(MENU_ENUM_LABEL_ADD_TO_FAVORITES_PLAYLIST),
               MENU_ENUM_LABEL_ADD_TO_FAVORITES_PLAYLIST, FILE_TYPE_PLAYLIST_ENTRY, 0, 0);
      }

      if (settings->bools.quick_menu_show_set_core_association && !settings->bools.kiosk_mode_enable)
      {
         menu_entries_append_enum(info->list,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_SET_CORE_ASSOCIATION),
               msg_hash_to_str(MENU_ENUM_LABEL_SET_CORE_ASSOCIATION),
               MENU_ENUM_LABEL_SET_CORE_ASSOCIATION, FILE_TYPE_PLAYLIST_ENTRY, 0, 0);
      }

      if (settings->bools.quick_menu_show_reset_core_association && !settings->bools.kiosk_mode_enable)
      {
         menu_entries_append_enum(info->list,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_RESET_CORE_ASSOCIATION),
               msg_hash_to_str(MENU_ENUM_LABEL_RESET_CORE_ASSOCIATION),
               MENU_ENUM_LABEL_RESET_CORE_ASSOCIATION, FILE_TYPE_PLAYLIST_ENTRY, 0, 0);
      }

      if (settings->bools.quick_menu_show_information)
      {
         menu_entries_append_enum(info->list,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_INFORMATION),
               msg_hash_to_str(MENU_ENUM_LABEL_INFORMATION),
               MENU_ENUM_LABEL_INFORMATION, MENU_SETTING_ACTION, 0, 0);
      }
   }
   return 0;
}
