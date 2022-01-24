#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char const* menu_driver; } ;
struct TYPE_7__ {TYPE_1__ arrays; } ;
typedef  TYPE_2__ settings_t ;
typedef  int /*<<< orphan*/  playlist_t ;
typedef  int /*<<< orphan*/  menu_handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  list; } ;
typedef  TYPE_3__ menu_displaylist_info_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_PATH_CONTENT_FAVORITES ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_HISTORY ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_IMAGE_HISTORY ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_MUSIC_HISTORY ; 
 int /*<<< orphan*/  FILE_PATH_CONTENT_VIDEO_HISTORY ; 
 int /*<<< orphan*/  FILE_TYPE_PLAYLIST_ENTRY ; 
 int MENU_ENUM_LABEL_DELETE_PLAYLIST ; 
 int MENU_ENUM_LABEL_PLAYLIST_MANAGER_DEFAULT_CORE ; 
 int MENU_ENUM_LABEL_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE ; 
 int MENU_ENUM_LABEL_PLAYLIST_MANAGER_LEFT_THUMBNAIL_MODE ; 
 int MENU_ENUM_LABEL_PLAYLIST_MANAGER_RESET_CORES ; 
 int MENU_ENUM_LABEL_PLAYLIST_MANAGER_RIGHT_THUMBNAIL_MODE ; 
 int MENU_ENUM_LABEL_VALUE_DELETE_PLAYLIST ; 
 int MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS ; 
 int MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_MATERIALUI ; 
 int MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_OZONE ; 
 int MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_RGUI ; 
 int MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_DEFAULT_CORE ; 
 int MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE ; 
 int MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_RESET_CORES ; 
 int MENU_ENUM_LABEL_VALUE_THUMBNAILS ; 
 int MENU_ENUM_LABEL_VALUE_THUMBNAILS_MATERIALUI ; 
 int MENU_ENUM_LABEL_VALUE_THUMBNAILS_RGUI ; 
 int /*<<< orphan*/  MENU_SETTING_ACTION_DELETE_PLAYLIST ; 
 int /*<<< orphan*/  MENU_SETTING_PLAYLIST_MANAGER_DEFAULT_CORE ; 
 int /*<<< orphan*/  MENU_SETTING_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE ; 
 int /*<<< orphan*/  MENU_SETTING_PLAYLIST_MANAGER_LEFT_THUMBNAIL_MODE ; 
 int /*<<< orphan*/  MENU_SETTING_PLAYLIST_MANAGER_RIGHT_THUMBNAIL_MODE ; 
 TYPE_2__* FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static bool FUNC9(
      menu_handle_t *menu,
      menu_displaylist_info_t *info,
      const char *playlist_path)
{
   enum msg_hash_enums right_thumbnail_label_value;
   enum msg_hash_enums left_thumbnail_label_value;
   settings_t *settings      = FUNC0();
   const char *playlist_file = NULL;
   playlist_t *playlist      = NULL;

   if (!settings)
      return false;

   if (FUNC7(playlist_path))
      return false;

   playlist_file = FUNC5(playlist_path);

   if (FUNC7(playlist_file))
      return false;

   FUNC2(menu, playlist_path);

   playlist = FUNC6();

   if (!playlist)
      return false;

   /* Default core association
    * > This is only shown for collection playlists
    *   (i.e. it is not relevant for history/favourites) */
   if (!FUNC8(playlist_file, FUNC1(FILE_PATH_CONTENT_HISTORY)) &&
       !FUNC8(playlist_file, FUNC1(FILE_PATH_CONTENT_MUSIC_HISTORY)) &&
       !FUNC8(playlist_file, FUNC1(FILE_PATH_CONTENT_VIDEO_HISTORY)) &&
       !FUNC8(playlist_file, FUNC1(FILE_PATH_CONTENT_IMAGE_HISTORY)) &&
       !FUNC8(playlist_file, FUNC1(FILE_PATH_CONTENT_FAVORITES)))
      FUNC3(info->list,
            FUNC4(MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_DEFAULT_CORE),
            FUNC4(MENU_ENUM_LABEL_PLAYLIST_MANAGER_DEFAULT_CORE),
            MENU_ENUM_LABEL_PLAYLIST_MANAGER_DEFAULT_CORE,
            MENU_SETTING_PLAYLIST_MANAGER_DEFAULT_CORE, 0, 0);

   /* Reset core associations */
   FUNC3(info->list,
         FUNC4(MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_RESET_CORES),
         FUNC4(MENU_ENUM_LABEL_PLAYLIST_MANAGER_RESET_CORES),
         MENU_ENUM_LABEL_PLAYLIST_MANAGER_RESET_CORES,
         FILE_TYPE_PLAYLIST_ENTRY, 0, 0);

   /* Label display mode */
   FUNC3(info->list,
         FUNC4(MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE),
         FUNC4(MENU_ENUM_LABEL_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE),
         MENU_ENUM_LABEL_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE,
         MENU_SETTING_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE, 0, 0);

   /* Thumbnail modes */

   /* > Get label values */
   if (FUNC8(settings->arrays.menu_driver, "rgui"))
   {
      right_thumbnail_label_value = MENU_ENUM_LABEL_VALUE_THUMBNAILS_RGUI;
      left_thumbnail_label_value  = MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_RGUI;
   }
   else if (FUNC8(settings->arrays.menu_driver, "ozone"))
   {
      right_thumbnail_label_value = MENU_ENUM_LABEL_VALUE_THUMBNAILS;
      left_thumbnail_label_value  = MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_OZONE;
   }
   else if (FUNC8(settings->arrays.menu_driver, "glui"))
   {
      right_thumbnail_label_value = MENU_ENUM_LABEL_VALUE_THUMBNAILS_MATERIALUI;
      left_thumbnail_label_value  = MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_MATERIALUI;
   }
   else
   {
      right_thumbnail_label_value = MENU_ENUM_LABEL_VALUE_THUMBNAILS;
      left_thumbnail_label_value  = MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS;
   }

   /* > Right thumbnail mode */
   FUNC3(info->list,
         FUNC4(right_thumbnail_label_value),
         FUNC4(MENU_ENUM_LABEL_PLAYLIST_MANAGER_RIGHT_THUMBNAIL_MODE),
         MENU_ENUM_LABEL_PLAYLIST_MANAGER_RIGHT_THUMBNAIL_MODE,
         MENU_SETTING_PLAYLIST_MANAGER_RIGHT_THUMBNAIL_MODE, 0, 0);

   /* > Left thumbnail mode */
   FUNC3(info->list,
         FUNC4(left_thumbnail_label_value),
         FUNC4(MENU_ENUM_LABEL_PLAYLIST_MANAGER_LEFT_THUMBNAIL_MODE),
         MENU_ENUM_LABEL_PLAYLIST_MANAGER_LEFT_THUMBNAIL_MODE,
         MENU_SETTING_PLAYLIST_MANAGER_LEFT_THUMBNAIL_MODE, 0, 0);

   /* TODO - Add:
    * - Remove invalid entries */

   FUNC3(info->list,
         FUNC4(MENU_ENUM_LABEL_VALUE_DELETE_PLAYLIST),
         FUNC4(MENU_ENUM_LABEL_DELETE_PLAYLIST),
         MENU_ENUM_LABEL_DELETE_PLAYLIST,
         MENU_SETTING_ACTION_DELETE_PLAYLIST, 0, 0);

   return true;
}