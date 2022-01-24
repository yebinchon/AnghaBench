#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct retro_subsystem_info {char* desc; int /*<<< orphan*/  num_roms; } ;
struct TYPE_14__ {int /*<<< orphan*/  menu_show_reboot; int /*<<< orphan*/  menu_show_quit_retroarch; int /*<<< orphan*/  menu_show_help; int /*<<< orphan*/  kiosk_mode_enable; int /*<<< orphan*/  menu_show_configurations; int /*<<< orphan*/  menu_show_restart_retroarch; int /*<<< orphan*/  menu_show_information; int /*<<< orphan*/  menu_content_show_settings; int /*<<< orphan*/  menu_show_online_updater; int /*<<< orphan*/  menu_show_load_content; int /*<<< orphan*/  menu_show_load_core; } ;
struct TYPE_12__ {int /*<<< orphan*/  kiosk_mode_password; int /*<<< orphan*/  menu_content_show_settings_password; } ;
struct TYPE_15__ {TYPE_3__ bools; TYPE_1__ paths; } ;
typedef  TYPE_4__ settings_t ;
typedef  int /*<<< orphan*/  s ;
struct TYPE_13__ {int size; struct retro_subsystem_info* data; } ;
struct TYPE_16__ {TYPE_2__ subsystem; int /*<<< orphan*/  load_no_content; } ;
typedef  TYPE_5__ rarch_system_info_t ;
typedef  int /*<<< orphan*/  menu_handle_t ;
struct TYPE_17__ {int need_push; int need_refresh; int /*<<< orphan*/  list; } ;
typedef  TYPE_6__ menu_displaylist_info_t ;
struct TYPE_18__ {int add_empty_entry; int /*<<< orphan*/  enum_idx; int /*<<< orphan*/  parse_type; TYPE_6__* info; int /*<<< orphan*/ * data; } ;
typedef  TYPE_7__ menu_displaylist_ctx_parse_entry_t ;
typedef  int /*<<< orphan*/  core_info_list_t ;

/* Variables and functions */
#define  DISPLAYLIST_LOAD_CONTENT_LIST 129 
#define  DISPLAYLIST_MAIN_MENU 128 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_CLEAR ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ADD_CONTENT_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CONFIGURATIONS_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CONTENT_COLLECTION_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CONTENT_SETTINGS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CORE_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_FAVORITES ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_HELP_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_INFORMATION_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_LOAD_CONTENT_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_MENU_DISABLE_KIOSK_MODE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ONLINE_UPDATER ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_QUIT_RETROARCH ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_REBOOT ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_RESTART_RETROARCH ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SHUTDOWN ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_START_CORE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SUBSYSTEM_ADD ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SUBSYSTEM_LOAD ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_CONTENT_COLLECTION_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_DOWNLOADED_FILE_DETECT_CORE_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_FAVORITES ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_MENU_FILE_BROWSER_SETTINGS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_XMB_MAIN_MENU_ENABLE_SETTINGS ; 
 int /*<<< orphan*/  MENU_SETTINGS_SUBSYSTEM_ADD ; 
 int /*<<< orphan*/  MENU_SETTINGS_SUBSYSTEM_LOAD ; 
 int /*<<< orphan*/  MENU_SETTING_ACTION ; 
 int /*<<< orphan*/  PARSE_ACTION ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  RARCH_CTL_CORE_IS_RUNNING ; 
 int /*<<< orphan*/  RARCH_CTL_IS_DUMMY_CORE ; 
 TYPE_4__* FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(void *data, void *userdata,
      menu_displaylist_info_t *info, unsigned type)
{
   menu_displaylist_ctx_parse_entry_t entry;
   int ret                = -1;
   int i                  = 0;
   core_info_list_t *list = NULL;
   menu_handle_t *menu    = (menu_handle_t*)data;

   switch (type)
   {
      case DISPLAYLIST_LOAD_CONTENT_LIST:
         {
            settings_t *settings = FUNC0();

            FUNC9(MENU_ENTRIES_CTL_CLEAR, info->list);

            FUNC8(info->list,
                  FUNC10(MENU_ENUM_LABEL_VALUE_FAVORITES),
                  FUNC10(MENU_ENUM_LABEL_FAVORITES),
                  MENU_ENUM_LABEL_FAVORITES,
                  MENU_SETTING_ACTION, 0, 0);

            FUNC3(&list);
            if (FUNC4(list))
            {
               FUNC8(info->list,
                     FUNC10(MENU_ENUM_LABEL_VALUE_DOWNLOADED_FILE_DETECT_CORE_LIST),
                     FUNC10(MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST),
                     MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST,
                     MENU_SETTING_ACTION, 0, 0);
            }

#ifdef HAVE_LIBRETRODB
#if 0
            /* TODO/FIXME - figure out what to do here */
            menu_entries_append_enum(info->list,
                  msg_hash_to_str(MENU_ENUM_LABEL_VALUE_CONTENT_COLLECTION_LIST),
                  msg_hash_to_str(MENU_ENUM_LABEL_CONTENT_COLLECTION_LIST),
                  MENU_ENUM_LABEL_CONTENT_COLLECTION_LIST,
                  MENU_SETTING_ACTION, 0, 0);
#endif
#endif

            if (FUNC6(info->list, true) != 0)
               FUNC8(info->list, "/",
                     FUNC10(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
                     MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR,
                     MENU_SETTING_ACTION, 0, 0);

            if (!settings->bools.kiosk_mode_enable)
            {
               FUNC8(info->list,
                     FUNC10(MENU_ENUM_LABEL_VALUE_MENU_FILE_BROWSER_SETTINGS),
                     FUNC10(MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS),
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
            rarch_system_info_t *system = FUNC12();
            FUNC9(MENU_ENTRIES_CTL_CLEAR, info->list);

            entry.data            = menu;
            entry.info            = info;
            entry.parse_type      = PARSE_ACTION;
            entry.add_empty_entry = false;

            if (FUNC11(RARCH_CTL_CORE_IS_RUNNING, NULL))
            {
               if (!FUNC11(RARCH_CTL_IS_DUMMY_CORE, NULL))
               {
                  entry.enum_idx      = MENU_ENUM_LABEL_CONTENT_SETTINGS;
                  FUNC7(&entry);
               }
            }
            else
            {
               if (system->load_no_content)
               {
                  entry.enum_idx      = MENU_ENUM_LABEL_START_CORE;
                  FUNC7(&entry);
               }

#ifndef HAVE_DYNAMIC
               if (FUNC5())
#endif
               {
                  if (settings->bools.menu_show_load_core)
                  {
                     entry.enum_idx   = MENU_ENUM_LABEL_CORE_LIST;
                     FUNC7(&entry);
                  }
               }
            }

            if (settings->bools.menu_show_load_content)
            {
               const struct retro_subsystem_info* subsystem = NULL;

               entry.enum_idx      = MENU_ENUM_LABEL_LOAD_CONTENT_LIST;
               FUNC7(&entry);

               subsystem           = system->subsystem.data;

               if (subsystem)
               {
                  for (i = 0; i < system->subsystem.size; i++, subsystem++)
                  {
                     char s[PATH_MAX_LENGTH];
                     if (FUNC1() == i)
                     {
                        if (FUNC2() < subsystem->num_roms)
                        {
                           FUNC13(s, sizeof(s),
                                 "Load %s %s",
                                 subsystem->desc,
                                 i == FUNC1()
                                 ? "\u2605" : " ");
                           FUNC8(info->list,
                                 s,
                                 FUNC10(MENU_ENUM_LABEL_SUBSYSTEM_ADD),
                                 MENU_ENUM_LABEL_SUBSYSTEM_ADD,
                                 MENU_SETTINGS_SUBSYSTEM_ADD + i, 0, 0);
                        }
                        else
                        {
                           FUNC13(s, sizeof(s),
                                 "Start %s %s",
                                 subsystem->desc,
                                 i == FUNC1()
                                 ? "\u2605" : " ");
                           FUNC8(info->list,
                                 s,
                                 FUNC10(MENU_ENUM_LABEL_SUBSYSTEM_LOAD),
                                 MENU_ENUM_LABEL_SUBSYSTEM_LOAD,
                                 MENU_SETTINGS_SUBSYSTEM_LOAD, 0, 0);
                        }
                     }
                     else
                     {
                        FUNC13(s, sizeof(s),
                              "Load %s %s",
                              subsystem->desc,
                              i == FUNC1()
                              ? "\u2605" : " ");
                        FUNC8(info->list,
                              s,
                              FUNC10(MENU_ENUM_LABEL_SUBSYSTEM_ADD),
                              MENU_ENUM_LABEL_SUBSYSTEM_ADD,
                              MENU_SETTINGS_SUBSYSTEM_ADD + i, 0, 0);
                     }
                  }
               }
            }

            entry.enum_idx      = MENU_ENUM_LABEL_ADD_CONTENT_LIST;
            FUNC7(&entry);
#if defined(HAVE_NETWORKING)
            {
               settings_t *settings      = config_get_ptr();
               if (settings->bools.menu_show_online_updater && !settings->bools.kiosk_mode_enable)
               {
                  entry.enum_idx      = MENU_ENUM_LABEL_ONLINE_UPDATER;
                  menu_displaylist_setting(&entry);
               }
            }
#endif
            if (!settings->bools.menu_content_show_settings && !FUNC14(settings->paths.menu_content_show_settings_password))
            {
               entry.enum_idx      = MENU_ENUM_LABEL_XMB_MAIN_MENU_ENABLE_SETTINGS;
               FUNC7(&entry);
            }

            if (settings->bools.kiosk_mode_enable && !FUNC14(settings->paths.kiosk_mode_password))
            {
               entry.enum_idx      = MENU_ENUM_LABEL_MENU_DISABLE_KIOSK_MODE;
               FUNC7(&entry);
            }

            if (settings->bools.menu_show_information)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_INFORMATION_LIST;
               FUNC7(&entry);
            }

#ifndef HAVE_DYNAMIC
            if (settings->bools.menu_show_restart_retroarch)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_RESTART_RETROARCH;
               FUNC7(&entry);
            }
#endif

            if (settings->bools.menu_show_configurations && !settings->bools.kiosk_mode_enable)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_CONFIGURATIONS_LIST;
               FUNC7(&entry);
            }

            if (settings->bools.menu_show_help)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_HELP_LIST;
               FUNC7(&entry);
            }

#if !defined(IOS)
            if (settings->bools.menu_show_quit_retroarch)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_QUIT_RETROARCH;
               FUNC7(&entry);
            }
#endif

            if (settings->bools.menu_show_reboot)
            {
               entry.enum_idx      = MENU_ENUM_LABEL_REBOOT;
               FUNC7(&entry);
            }

            entry.enum_idx      = MENU_ENUM_LABEL_SHUTDOWN;
            FUNC7(&entry);
            info->need_push    = true;
            ret = 0;
         }
         break;
   }
   return ret;
}