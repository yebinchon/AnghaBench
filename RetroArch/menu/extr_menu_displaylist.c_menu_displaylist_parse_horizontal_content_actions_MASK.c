#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  system ;
struct playlist_entry {char* path; } ;
struct TYPE_12__ {int /*<<< orphan*/  kiosk_mode_enable; scalar_t__ quick_menu_show_download_thumbnails; scalar_t__ quick_menu_show_information; scalar_t__ quick_menu_show_reset_core_association; scalar_t__ quick_menu_show_set_core_association; scalar_t__ quick_menu_show_add_to_favorites; scalar_t__ playlist_entry_rename; } ;
struct TYPE_11__ {scalar_t__ playlist_entry_remove_enable; } ;
struct TYPE_13__ {TYPE_2__ bools; TYPE_1__ uints; } ;
typedef  TYPE_3__ settings_t ;
typedef  int /*<<< orphan*/  playlist_t ;
struct TYPE_14__ {unsigned int rpl_entry_selection_ptr; char* deferred_path; } ;
typedef  TYPE_4__ menu_handle_t ;
struct TYPE_15__ {int /*<<< orphan*/  list; } ;
typedef  TYPE_5__ menu_displaylist_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_PATH_CONTENT_FAVORITES ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_HISTORY ; 
 int /*<<< orphan*/  FILE_TYPE_PLAYLIST_ENTRY ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ADD_TO_FAVORITES_PLAYLIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ADD_TO_MIXER ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ADD_TO_MIXER_AND_PLAY ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DELETE_ENTRY ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DOWNLOAD_PL_ENTRY_THUMBNAILS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_INFORMATION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_RENAME_ENTRY ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_RESET_CORE_ASSOCIATION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_RUN ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SET_CORE_ASSOCIATION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_ADD_TO_FAVORITES_PLAYLIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_ADD_TO_MIXER ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_ADD_TO_MIXER_AND_PLAY ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_DELETE_ENTRY ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_DOWNLOAD_PL_ENTRY_THUMBNAILS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_INFORMATION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RENAME_ENTRY ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RESET_CORE_ASSOCIATION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_RUN ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_SET_CORE_ASSOCIATION ; 
 int /*<<< orphan*/  MENU_SETTING_ACTION ; 
 int /*<<< orphan*/  MENU_SETTING_ACTION_DELETE_ENTRY ; 
 int PATH_MAX_LENGTH ; 
 scalar_t__ PLAYLIST_ENTRY_REMOVE_ENABLE_ALL ; 
 scalar_t__ PLAYLIST_ENTRY_REMOVE_ENABLE_HIST_FAV ; 
 int /*<<< orphan*/  RARCH_CTL_IS_DUMMY_CORE ; 
 int /*<<< orphan*/  RARCH_PATH_CONTENT ; 
 int /*<<< orphan*/  RARCH_PATH_CORE ; 
 scalar_t__ FUNC0 (char const*) ; 
 TYPE_3__* FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned int,struct playlist_entry const**) ; 
 int FUNC13 (int /*<<< orphan*/ *,unsigned int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 scalar_t__ FUNC16 (char const*,char const*) ; 

__attribute__((used)) static int FUNC17(
      menu_handle_t *menu,
      menu_displaylist_info_t *info)
{
   bool content_loaded             = false;
   playlist_t *playlist            = FUNC10();
   settings_t *settings            = FUNC1();
   const char *fullpath            = FUNC8(RARCH_PATH_CONTENT);
   unsigned idx                    = menu->rpl_entry_selection_ptr;
   const struct playlist_entry *entry  = NULL;

   if (playlist)
      FUNC12(playlist, idx, &entry);

   content_loaded = !FUNC14(RARCH_CTL_IS_DUMMY_CORE, NULL)
         && FUNC16(menu->deferred_path, fullpath);

   if (content_loaded)
      FUNC3(menu, info);
   else
   {
#ifdef HAVE_AUDIOMIXER
      const char *ext = NULL;

      if (entry && !string_is_empty(entry->path))
         ext = path_get_extension(entry->path);

      if (!string_is_empty(ext) &&
            audio_driver_mixer_extension_supported(ext))
      {
         menu_entries_append_enum(info->list,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_ADD_TO_MIXER),
               msg_hash_to_str(MENU_ENUM_LABEL_ADD_TO_MIXER),
               MENU_ENUM_LABEL_ADD_TO_MIXER,
               FILE_TYPE_PLAYLIST_ENTRY, 0, idx);

         menu_entries_append_enum(info->list,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_ADD_TO_MIXER_AND_PLAY),
               msg_hash_to_str(MENU_ENUM_LABEL_ADD_TO_MIXER_AND_PLAY),
               MENU_ENUM_LABEL_ADD_TO_MIXER_AND_PLAY,
               FILE_TYPE_PLAYLIST_ENTRY, 0, idx);
      }
#endif

      FUNC5(info->list,
            FUNC6(MENU_ENUM_LABEL_VALUE_RUN),
            FUNC6(MENU_ENUM_LABEL_RUN),
            MENU_ENUM_LABEL_RUN, FILE_TYPE_PLAYLIST_ENTRY, 0, idx);

      if (settings->bools.playlist_entry_rename &&
            !settings->bools.kiosk_mode_enable)
         FUNC5(info->list,
               FUNC6(MENU_ENUM_LABEL_VALUE_RENAME_ENTRY),
               FUNC6(MENU_ENUM_LABEL_RENAME_ENTRY),
               MENU_ENUM_LABEL_RENAME_ENTRY,
               FILE_TYPE_PLAYLIST_ENTRY, 0, idx);

      if (!settings->bools.kiosk_mode_enable)
      {
         bool remove_entry_enabled = false;

         if (settings->uints.playlist_entry_remove_enable == PLAYLIST_ENTRY_REMOVE_ENABLE_ALL)
            remove_entry_enabled = true;
         else if (settings->uints.playlist_entry_remove_enable == PLAYLIST_ENTRY_REMOVE_ENABLE_HIST_FAV)
         {
            char system[PATH_MAX_LENGTH];
            system[0] = '\0';

            FUNC4(system, sizeof(system));

            if (!FUNC15(system))
               remove_entry_enabled = FUNC16(system, "history") ||
                                      FUNC16(system, "favorites") ||
                                      FUNC16(system, "images_history") ||
                                      FUNC16(system, "music_history") ||
                                      FUNC16(system, "video_history");

            /* An annoyance: if the user navigates to the information menu,
             * then to the database entry, the thumbnail system will be changed.
             * This breaks the above 'remove_entry_enabled' check for the
             * history and favorites playlists. We therefore have to check
             * the playlist file name as well... */
            if (!remove_entry_enabled && settings->bools.quick_menu_show_information)
            {
               const char *playlist_path = FUNC11(playlist);

               if (!FUNC15(playlist_path))
               {
                  const char *playlist_file = FUNC7(playlist_path);

                  if (!FUNC15(playlist_file))
                     remove_entry_enabled = FUNC16(playlist_file, FUNC2(FILE_PATH_CONTENT_HISTORY)) ||
                                            FUNC16(playlist_file, FUNC2(FILE_PATH_CONTENT_FAVORITES));
               }
            }
         }

         if (remove_entry_enabled)
            FUNC5(info->list,
                  FUNC6(MENU_ENUM_LABEL_VALUE_DELETE_ENTRY),
                  FUNC6(MENU_ENUM_LABEL_DELETE_ENTRY),
                  MENU_ENUM_LABEL_DELETE_ENTRY,
                  MENU_SETTING_ACTION_DELETE_ENTRY, 0, 0);
      }

      if (settings->bools.quick_menu_show_add_to_favorites)
      {
         FUNC5(info->list,
               FUNC6(MENU_ENUM_LABEL_VALUE_ADD_TO_FAVORITES_PLAYLIST),
               FUNC6(MENU_ENUM_LABEL_ADD_TO_FAVORITES_PLAYLIST),
               MENU_ENUM_LABEL_ADD_TO_FAVORITES_PLAYLIST, FILE_TYPE_PLAYLIST_ENTRY, 0, 0);
      }

      if (settings->bools.quick_menu_show_set_core_association && !settings->bools.kiosk_mode_enable)
      {
         FUNC5(info->list,
               FUNC6(MENU_ENUM_LABEL_VALUE_SET_CORE_ASSOCIATION),
               FUNC6(MENU_ENUM_LABEL_SET_CORE_ASSOCIATION),
               MENU_ENUM_LABEL_SET_CORE_ASSOCIATION, FILE_TYPE_PLAYLIST_ENTRY, 0, 0);
      }

      if (settings->bools.quick_menu_show_reset_core_association && !settings->bools.kiosk_mode_enable)
      {
         FUNC5(info->list,
               FUNC6(MENU_ENUM_LABEL_VALUE_RESET_CORE_ASSOCIATION),
               FUNC6(MENU_ENUM_LABEL_RESET_CORE_ASSOCIATION),
               MENU_ENUM_LABEL_RESET_CORE_ASSOCIATION, FILE_TYPE_PLAYLIST_ENTRY, 0, 0);
      }

      if (settings->bools.quick_menu_show_information)
      {
         FUNC5(info->list,
               FUNC6(MENU_ENUM_LABEL_VALUE_INFORMATION),
               FUNC6(MENU_ENUM_LABEL_INFORMATION),
               MENU_ENUM_LABEL_INFORMATION, MENU_SETTING_ACTION, 0, 0);
      }
   }

#ifdef HAVE_NETWORKING
   if (settings->bools.quick_menu_show_download_thumbnails && !settings->bools.kiosk_mode_enable)
   {
      bool download_enabled = true;

      /* If content is currently running, have to make sure
       * we have a valid playlist to work with */
      if (content_loaded)
      {
         const char *core_path = path_get(RARCH_PATH_CORE);

         download_enabled = false;
         if (!string_is_empty(fullpath) && !string_is_empty(core_path))
            download_enabled = playlist_index_is_valid(
                  playlist, idx, fullpath, core_path);
      }

      if (download_enabled)
      {
         char system[PATH_MAX_LENGTH];

         system[0] = '\0';

         /* Only show 'download thumbnails' on supported playlists */
         download_enabled = false;
         menu_driver_get_thumbnail_system(system, sizeof(system));

         if (!string_is_empty(system))
            download_enabled = !string_is_equal(system, "images_history") &&
                               !string_is_equal(system, "music_history") &&
                               !string_is_equal(system, "video_history");
      }

      if (download_enabled)
         menu_entries_append_enum(info->list,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_DOWNLOAD_PL_ENTRY_THUMBNAILS),
               msg_hash_to_str(MENU_ENUM_LABEL_DOWNLOAD_PL_ENTRY_THUMBNAILS),
               MENU_ENUM_LABEL_DOWNLOAD_PL_ENTRY_THUMBNAILS, FILE_TYPE_PLAYLIST_ENTRY, 0, 0);
   }
#endif

   return 0;
}