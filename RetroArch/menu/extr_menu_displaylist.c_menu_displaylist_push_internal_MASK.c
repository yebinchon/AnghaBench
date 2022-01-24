#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* directory_playlist; } ;
struct TYPE_8__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_9__ {int type; char* exts; char* label; int need_push_no_playlist_entries; int need_refresh; int need_push; char* path; int /*<<< orphan*/  list; } ;
typedef  TYPE_3__ menu_displaylist_info_t ;
typedef  int /*<<< orphan*/  menu_displaylist_ctx_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  DISPLAYLIST_CHEAT_SEARCH_SETTINGS_LIST ; 
 int /*<<< orphan*/  DISPLAYLIST_DATABASE_PLAYLISTS ; 
 int /*<<< orphan*/  DISPLAYLIST_FAVORITES ; 
 int /*<<< orphan*/  DISPLAYLIST_HISTORY ; 
 int /*<<< orphan*/  DISPLAYLIST_HORIZONTAL ; 
 int /*<<< orphan*/  DISPLAYLIST_IMAGES_HISTORY ; 
 int /*<<< orphan*/  DISPLAYLIST_MUSIC_HISTORY ; 
 int /*<<< orphan*/  DISPLAYLIST_NETPLAY_ROOM_LIST ; 
 int /*<<< orphan*/  DISPLAYLIST_SCAN_DIRECTORY_LIST ; 
 int /*<<< orphan*/  DISPLAYLIST_SETTINGS_ALL ; 
 int /*<<< orphan*/  DISPLAYLIST_VIDEO_HISTORY ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_CLEAR ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ADD_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CHEAT_SEARCH_SETTINGS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_FAVORITES_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_HISTORY_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_HORIZONTAL_MENU ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_IMAGES_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_MUSIC_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_NETPLAY_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_PLAYLISTS_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SETTINGS_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_TAKE_SCREENSHOT ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_TAKE_SCREENSHOT ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VIDEO_TAB ; 
 int /*<<< orphan*/  MENU_SETTING_ACTION_SCREENSHOT ; 
 int /*<<< orphan*/  RARCH_CTL_IS_DUMMY_CORE ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

__attribute__((used)) static bool FUNC11(
      const char *label,
      menu_displaylist_ctx_entry_t *entry,
      menu_displaylist_info_t *info)
{
   if (FUNC10(label, FUNC6(MENU_ENUM_LABEL_HISTORY_TAB)))
   {
      if (FUNC3(DISPLAYLIST_HISTORY, info))
         return true;
   }
   else if (FUNC10(label, FUNC6(MENU_ENUM_LABEL_FAVORITES_TAB)))
   {
      if (FUNC3(DISPLAYLIST_FAVORITES, info))
         return true;
   }
   else if (FUNC10(label, FUNC6(MENU_ENUM_LABEL_SETTINGS_TAB)))
   {
      if (FUNC3(DISPLAYLIST_SETTINGS_ALL, info))
         return true;
   }
   else if (FUNC10(label, FUNC6(MENU_ENUM_LABEL_CHEAT_SEARCH_SETTINGS)))
   {
      if (FUNC3(DISPLAYLIST_CHEAT_SEARCH_SETTINGS_LIST, info))
         return true;
   }
   else if (FUNC10(label, FUNC6(MENU_ENUM_LABEL_MUSIC_TAB)))
   {
      FUNC1();
      info->type = 42;

      if (!FUNC9(info->exts))
         FUNC2(info->exts);
      if (!FUNC9(info->label))
         FUNC2(info->label);

      info->exts  = FUNC8("lpl");
      info->label = FUNC8(
            FUNC6(MENU_ENUM_LABEL_PLAYLISTS_TAB));

      FUNC5(MENU_ENTRIES_CTL_CLEAR, info->list);
      FUNC3(DISPLAYLIST_MUSIC_HISTORY, info);
      return true;
   }
   else if (FUNC10(label, FUNC6(MENU_ENUM_LABEL_VIDEO_TAB)))
   {
      FUNC1();
      info->type = 42;

      if (!FUNC9(info->exts))
         FUNC2(info->exts);
      if (!FUNC9(info->label))
         FUNC2(info->label);

      info->exts  = FUNC8("lpl");
      info->label = FUNC8(
            FUNC6(MENU_ENUM_LABEL_PLAYLISTS_TAB));

      FUNC5(MENU_ENTRIES_CTL_CLEAR, info->list);
      FUNC3(DISPLAYLIST_VIDEO_HISTORY, info);
      return true;
   }
   else if (FUNC10(label, FUNC6(MENU_ENUM_LABEL_IMAGES_TAB)))
   {
      FUNC1();
      info->type = 42;

      if (!FUNC9(info->exts))
         FUNC2(info->exts);
      if (!FUNC9(info->label))
         FUNC2(info->label);

      info->exts  = FUNC8("lpl");
      info->label = FUNC8(
            FUNC6(MENU_ENUM_LABEL_PLAYLISTS_TAB));

      FUNC5(MENU_ENTRIES_CTL_CLEAR, info->list);

#if 0
      if (!rarch_ctl(RARCH_CTL_IS_DUMMY_CORE, NULL))
         menu_entries_append_enum(info->list,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_TAKE_SCREENSHOT),
               msg_hash_to_str(MENU_ENUM_LABEL_TAKE_SCREENSHOT),
               MENU_ENUM_LABEL_TAKE_SCREENSHOT,
               MENU_SETTING_ACTION_SCREENSHOT, 0, 0);
      else
         info->need_push_no_playlist_entries = true;
#endif
      FUNC3(DISPLAYLIST_IMAGES_HISTORY, info);
      return true;
   }
   else if (FUNC10(label, FUNC6(MENU_ENUM_LABEL_PLAYLISTS_TAB)))
   {
      settings_t *settings  = FUNC0();

      FUNC1();
      info->type = 42;

      if (!FUNC9(info->exts))
         FUNC2(info->exts);
      if (!FUNC9(info->label))
         FUNC2(info->label);

      info->exts  = FUNC8("lpl");
      info->label = FUNC8(
            FUNC6(MENU_ENUM_LABEL_PLAYLISTS_TAB));

      if (FUNC9(settings->paths.directory_playlist))
      {
         FUNC5(MENU_ENTRIES_CTL_CLEAR, info->list);
         info->need_refresh                  = true;
         info->need_push_no_playlist_entries = true;
         info->need_push                     = true;

         return true;
      }
      else
      {
         if (!FUNC9(info->path))
            FUNC2(info->path);

         info->path = FUNC8(settings->paths.directory_playlist);

         if (FUNC3(
                  DISPLAYLIST_DATABASE_PLAYLISTS, info))
            return true;
      }
   }
   else if (FUNC10(label, FUNC6(MENU_ENUM_LABEL_ADD_TAB)))
   {
      if (FUNC3(DISPLAYLIST_SCAN_DIRECTORY_LIST, info))
         return true;
   }
   else if (FUNC10(label, FUNC6(MENU_ENUM_LABEL_NETPLAY_TAB)))
   {
      if (FUNC3(DISPLAYLIST_NETPLAY_ROOM_LIST, info))
         return true;
   }
   else if (FUNC10(label, FUNC6(MENU_ENUM_LABEL_HORIZONTAL_MENU)))
   {
      if (FUNC3(DISPLAYLIST_HORIZONTAL, info))
         return true;
   }

   return false;
}