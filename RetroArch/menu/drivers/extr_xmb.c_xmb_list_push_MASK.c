#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct retro_subsystem_info {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  menu_show_shutdown; int /*<<< orphan*/  menu_show_reboot; int /*<<< orphan*/  menu_show_quit_retroarch; int /*<<< orphan*/  menu_show_restart_retroarch; int /*<<< orphan*/  menu_show_help; int /*<<< orphan*/  kiosk_mode_enable; int /*<<< orphan*/  menu_show_configurations; int /*<<< orphan*/  menu_show_information; int /*<<< orphan*/  menu_content_show_settings; int /*<<< orphan*/  menu_show_online_updater; int /*<<< orphan*/  desktop_menu_enable; int /*<<< orphan*/  menu_show_dump_disc; int /*<<< orphan*/  menu_show_load_disc; int /*<<< orphan*/  menu_show_load_content; int /*<<< orphan*/  menu_show_load_core; } ;
struct TYPE_14__ {int /*<<< orphan*/  kiosk_mode_password; int /*<<< orphan*/  menu_content_show_settings_password; } ;
struct TYPE_16__ {TYPE_3__ bools; TYPE_2__ paths; } ;
typedef  TYPE_4__ settings_t ;
struct TYPE_13__ {struct retro_subsystem_info* data; } ;
struct TYPE_17__ {TYPE_1__ subsystem; int /*<<< orphan*/  load_no_content; } ;
typedef  TYPE_5__ rarch_system_info_t ;
typedef  int /*<<< orphan*/  menu_handle_t ;
struct TYPE_18__ {int need_push; int need_refresh; int /*<<< orphan*/  list; } ;
typedef  TYPE_6__ menu_displaylist_info_t ;
struct TYPE_19__ {int add_empty_entry; int /*<<< orphan*/  enum_idx; int /*<<< orphan*/  parse_type; TYPE_6__* info; int /*<<< orphan*/ * data; } ;
typedef  TYPE_7__ menu_displaylist_ctx_parse_entry_t ;
typedef  int /*<<< orphan*/  core_info_list_t ;

/* Variables and functions */
#define  DISPLAYLIST_LOAD_CONTENT_LIST 129 
#define  DISPLAYLIST_MAIN_MENU 128 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_CLEAR ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ADD_CONTENT_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CONFIGURATIONS_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CONTENT_SETTINGS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CORE_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DUMP_DISC ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_FAVORITES ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_HELP_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_INFORMATION_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_LOAD_CONTENT_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_LOAD_DISC ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_MENU_DISABLE_KIOSK_MODE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ONLINE_UPDATER ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_PLAYLISTS_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_QUIT_RETROARCH ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_REBOOT ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_RESTART_RETROARCH ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SHOW_WIMP ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SHUTDOWN ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_START_CORE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SWITCH_BACKLIGHT_CONTROL ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SWITCH_CPU_PROFILE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SWITCH_GPU_PROFILE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_DOWNLOADED_FILE_DETECT_CORE_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_FAVORITES ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_MENU_FILE_BROWSER_SETTINGS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_PLAYLISTS_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_XMB_MAIN_MENU_ENABLE_SETTINGS ; 
 int /*<<< orphan*/  MENU_SETTING_ACTION ; 
 int /*<<< orphan*/  PARSE_ACTION ; 
 int /*<<< orphan*/  RARCH_CTL_CORE_IS_RUNNING ; 
 int /*<<< orphan*/  RARCH_CTL_IS_DUMMY_CORE ; 
 TYPE_4__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct retro_subsystem_info const*,TYPE_6__*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct retro_subsystem_info* subsystem_data ; 

__attribute__((used)) static int FUNC13(void *data, void *userdata,
      menu_displaylist_info_t *info, unsigned type)
{
   menu_displaylist_ctx_parse_entry_t entry;
   int ret                = -1;
   core_info_list_t *list = NULL;
   menu_handle_t *menu    = (menu_handle_t*)data;

   switch (type)
   {
      case DISPLAYLIST_LOAD_CONTENT_LIST:
         {
            settings_t *settings = FUNC0();

            FUNC7(MENU_ENTRIES_CTL_CLEAR, info->list);

            FUNC6(info->list,
                  FUNC9(MENU_ENUM_LABEL_VALUE_FAVORITES),
                  FUNC9(MENU_ENUM_LABEL_FAVORITES),
                  MENU_ENUM_LABEL_FAVORITES,
                  MENU_SETTING_ACTION, 0, 0);

            FUNC1(&list);
            if (FUNC2(list))
            {
               FUNC6(info->list,
                     FUNC9(MENU_ENUM_LABEL_VALUE_DOWNLOADED_FILE_DETECT_CORE_LIST),
                     FUNC9(MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST),
                     MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST,
                     MENU_SETTING_ACTION, 0, 0);
            }

#ifdef HAVE_LIBRETRODB
            menu_entries_append_enum(info->list,
                  msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLISTS_TAB),
                  msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB),
                  MENU_ENUM_LABEL_PLAYLISTS_TAB,
                  MENU_SETTING_ACTION, 0, 0);
#endif

            if (FUNC4(info->list, true) != 0)
               FUNC6(info->list, "/",
                     FUNC9(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
                     MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR,
                     MENU_SETTING_ACTION, 0, 0);

            if (!settings->bools.kiosk_mode_enable)
            {
               FUNC6(info->list,
                     FUNC9(MENU_ENUM_LABEL_VALUE_MENU_FILE_BROWSER_SETTINGS),
                     FUNC9(MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS),
                     MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS,
                     MENU_SETTING_ACTION, 0, 0);
            }

            info->need_push    = true;
            info->need_refresh = true;
            ret = 0;
         }
         break;
      case DISPLAYLIST_MAIN_MENU:
         {
            settings_t   *settings      = FUNC0();
            rarch_system_info_t *system = FUNC11();
            FUNC7(MENU_ENTRIES_CTL_CLEAR, info->list);

            entry.data            = menu;
            entry.info            = info;
            entry.parse_type      = PARSE_ACTION;
            entry.add_empty_entry = false;

            if (FUNC10(RARCH_CTL_CORE_IS_RUNNING, NULL))
            {
               if (!FUNC10(RARCH_CTL_IS_DUMMY_CORE, NULL))
               {
                  entry.enum_idx      = MENU_ENUM_LABEL_CONTENT_SETTINGS;
                  FUNC5(&entry);
               }
            }
            else
            {
               if (system->load_no_content)
               {
                  entry.enum_idx      = MENU_ENUM_LABEL_START_CORE;
                  FUNC5(&entry);
               }

#ifndef HAVE_DYNAMIC
               if (FUNC3())
#endif
               {
                  if (settings->bools.menu_show_load_core)
                  {
                     entry.enum_idx   = MENU_ENUM_LABEL_CORE_LIST;
                     FUNC5(&entry);
                  }
               }
            }

            if (settings->bools.menu_show_load_content)
            {
               const struct retro_subsystem_info* subsystem;

               entry.enum_idx      = MENU_ENUM_LABEL_LOAD_CONTENT_LIST;
               FUNC5(&entry);
               /* Core fully loaded, use the subsystem data */
               if (system->subsystem.data)
                     subsystem = system->subsystem.data;
               /* Core not loaded completely, use the data we peeked on load core */
               else
                  subsystem = subsystem_data;

               FUNC8(subsystem, info);
            }

            if (settings->bools.menu_show_load_disc)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_LOAD_DISC;
               FUNC5(&entry);
            }

            if (settings->bools.menu_show_dump_disc)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_DUMP_DISC;
               FUNC5(&entry);
            }

            entry.enum_idx      = MENU_ENUM_LABEL_ADD_CONTENT_LIST;
            FUNC5(&entry);
#ifdef HAVE_QT
            if (settings->bools.desktop_menu_enable)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_SHOW_WIMP;
               menu_displaylist_setting(&entry);
            }
#endif
#if defined(HAVE_NETWORKING)
#if defined(HAVE_ONLINE_UPDATER)
            if (settings->bools.menu_show_online_updater && !settings->bools.kiosk_mode_enable)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_ONLINE_UPDATER;
               menu_displaylist_setting(&entry);
            }
#endif
#endif
            if (!settings->bools.menu_content_show_settings && !FUNC12(settings->paths.menu_content_show_settings_password))
            {
               entry.enum_idx      = MENU_ENUM_LABEL_XMB_MAIN_MENU_ENABLE_SETTINGS;
               FUNC5(&entry);
            }

            if (settings->bools.kiosk_mode_enable && !FUNC12(settings->paths.kiosk_mode_password))
            {
               entry.enum_idx      = MENU_ENUM_LABEL_MENU_DISABLE_KIOSK_MODE;
               FUNC5(&entry);
            }

            if (settings->bools.menu_show_information)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_INFORMATION_LIST;
               FUNC5(&entry);
            }

#if defined(HAVE_LAKKA_SWITCH) || defined(HAVE_LIBNX)
            entry.enum_idx      = MENU_ENUM_LABEL_SWITCH_CPU_PROFILE;
            menu_displaylist_setting(&entry);
#endif

#ifdef HAVE_LAKKA_SWITCH
            entry.enum_idx      = MENU_ENUM_LABEL_SWITCH_GPU_PROFILE;
            menu_displaylist_setting(&entry);

            entry.enum_idx      = MENU_ENUM_LABEL_SWITCH_BACKLIGHT_CONTROL;
            menu_displaylist_setting(&entry);
#endif

            if (settings->bools.menu_show_configurations && !settings->bools.kiosk_mode_enable)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_CONFIGURATIONS_LIST;
               FUNC5(&entry);
            }

            if (settings->bools.menu_show_help)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_HELP_LIST;
               FUNC5(&entry);
            }

#if !defined(IOS)
            if (settings->bools.menu_show_restart_retroarch)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_RESTART_RETROARCH;
               FUNC5(&entry);
            }

            if (settings->bools.menu_show_quit_retroarch)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_QUIT_RETROARCH;
               FUNC5(&entry);
            }
#endif
            if (settings->bools.menu_show_reboot)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_REBOOT;
               FUNC5(&entry);
            }

            if (settings->bools.menu_show_shutdown)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_SHUTDOWN;
               FUNC5(&entry);
            }

            info->need_push    = true;
            ret = 0;
         }
         break;
   }
   return ret;
}