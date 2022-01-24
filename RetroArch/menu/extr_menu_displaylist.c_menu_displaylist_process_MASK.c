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
struct TYPE_7__ {int /*<<< orphan*/  kiosk_mode_enable; scalar_t__ menu_show_core_updater; } ;
struct TYPE_8__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_9__ {int* list; int /*<<< orphan*/  menu_list; scalar_t__ need_push_no_playlist_entries; scalar_t__ need_push; scalar_t__ need_clear; scalar_t__ need_refresh; scalar_t__ push_builtin_cores; scalar_t__ download_core; scalar_t__ need_sort; scalar_t__ need_entries_refresh; scalar_t__ need_navigation_clear; } ;
typedef  TYPE_3__ menu_displaylist_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_TYPE_CORE ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_REFRESH ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SET_REFRESH ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CORE_UPDATER_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_NO_PLAYLIST_ENTRIES_AVAILABLE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SIDELOAD_CORE_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_START_NET_RETROPAD ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_START_VIDEO_PROCESSOR ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_DOWNLOAD_CORE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NO_PLAYLIST_ENTRIES_AVAILABLE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_START_NET_RETROPAD ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_START_VIDEO_PROCESSOR ; 
 int /*<<< orphan*/  MENU_INFO_MESSAGE ; 
 int /*<<< orphan*/  MENU_NAVIGATION_CTL_CLEAR ; 
 int /*<<< orphan*/  MENU_SETTING_ACTION ; 
 int /*<<< orphan*/  MSG_UNKNOWN ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* new_entry ; 
 char* new_lbl_entry ; 
 char* new_path_entry ; 
 int /*<<< orphan*/  new_type ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ) ; 

bool FUNC12(menu_displaylist_info_t *info)
{
   size_t idx   = 0;
#if defined(HAVE_NETWORKING)
   settings_t *settings         = config_get_ptr();
#endif

   if (info->need_navigation_clear)
   {
      bool pending_push = true;
      FUNC3(MENU_NAVIGATION_CTL_CLEAR, &pending_push);
   }

   if (info->need_entries_refresh)
   {
      bool refresh = false;
      FUNC6(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
   }

   if (info->need_sort)
      FUNC2(info->list);

#if defined(HAVE_NETWORKING)
#if defined(__WINRT__) || defined(WINAPI_FAMILY) && WINAPI_FAMILY == WINAPI_FAMILY_PHONE_APP
#else
   if (settings->bools.menu_show_core_updater && !settings->bools.kiosk_mode_enable)
   {
      if (info->download_core)
      {
         menu_entries_append_enum(info->list,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_DOWNLOAD_CORE),
               msg_hash_to_str(MENU_ENUM_LABEL_CORE_UPDATER_LIST),
               MENU_ENUM_LABEL_CORE_UPDATER_LIST,
               MENU_SETTING_ACTION, 0, 0);

         menu_entries_append_enum(info->list,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_LIST),
               msg_hash_to_str(MENU_ENUM_LABEL_SIDELOAD_CORE_LIST),
               MENU_ENUM_LABEL_SIDELOAD_CORE_LIST,
               MENU_SETTING_ACTION, 0, 0);
      }
   }
#endif
#endif

   if (info->push_builtin_cores)
   {
#if defined(HAVE_VIDEOPROCESSOR)
      menu_entries_append_enum(info->list,
            msg_hash_to_str(MENU_ENUM_LABEL_VALUE_START_VIDEO_PROCESSOR),
            msg_hash_to_str(MENU_ENUM_LABEL_START_VIDEO_PROCESSOR),
            MENU_ENUM_LABEL_START_VIDEO_PROCESSOR,
            MENU_SETTING_ACTION, 0, 0);
#endif

#if defined(HAVE_NETWORKING) && defined(HAVE_NETWORKGAMEPAD)
      menu_entries_append_enum(info->list,
            msg_hash_to_str(MENU_ENUM_LABEL_VALUE_START_NET_RETROPAD),
            msg_hash_to_str(MENU_ENUM_LABEL_START_NET_RETROPAD),
            MENU_ENUM_LABEL_START_NET_RETROPAD,
            MENU_SETTING_ACTION, 0, 0);
#endif
   }

   if (!FUNC10(new_entry))
   {
      FUNC7(info->list,
            new_path_entry,
            new_lbl_entry,
            new_type,
            FILE_TYPE_CORE, 0, 0);
      FUNC1(info->list, 0,
            new_entry);

      new_type          = MSG_UNKNOWN;
      new_lbl_entry[0]  = '\0';
      new_path_entry[0] = '\0';
      new_entry[0]      = '\0';
   }

   if (info->need_refresh)
      FUNC6(MENU_ENTRIES_CTL_REFRESH, info->list);

   if (info->need_clear)
      FUNC8(idx);

   if (info->need_push)
   {
      if (info->need_push_no_playlist_entries)
         FUNC5(info->list,
               FUNC9(
                  MENU_ENUM_LABEL_VALUE_NO_PLAYLIST_ENTRIES_AVAILABLE),
               FUNC9(
                  MENU_ENUM_LABEL_NO_PLAYLIST_ENTRIES_AVAILABLE),
               MENU_ENUM_LABEL_NO_PLAYLIST_ENTRIES_AVAILABLE,
               MENU_INFO_MESSAGE, 0, 0);

      FUNC4(info);
      FUNC11(info->list, info->menu_list);
   }
   return true;
}