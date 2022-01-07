
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct retro_subsystem_info {int dummy; } ;
struct TYPE_13__ {int menu_show_shutdown; int menu_show_reboot; int menu_show_restart_retroarch; int menu_show_help; int menu_show_configurations; int menu_show_information; int menu_content_show_netplay; int menu_show_online_updater; int menu_show_dump_disc; int menu_show_load_disc; int menu_content_show_history; int menu_show_load_content; int menu_show_load_core; } ;
struct TYPE_14__ {TYPE_2__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_12__ {struct retro_subsystem_info* data; } ;
struct TYPE_15__ {TYPE_1__ subsystem; int load_no_content; } ;
typedef TYPE_4__ rarch_system_info_t ;
typedef int menu_handle_t ;
struct TYPE_16__ {int need_push; int need_refresh; int list; } ;
typedef TYPE_5__ menu_displaylist_info_t ;
struct TYPE_17__ {int add_empty_entry; int enum_idx; int parse_type; TYPE_5__* info; int * data; } ;
typedef TYPE_6__ menu_displaylist_ctx_parse_entry_t ;
typedef int core_info_list_t ;




 int MENU_ENTRIES_CTL_CLEAR ;
 int MENU_ENUM_LABEL_CONFIGURATIONS_LIST ;
 int MENU_ENUM_LABEL_CONTENT_SETTINGS ;
 int MENU_ENUM_LABEL_CORE_LIST ;
 int MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST ;
 int MENU_ENUM_LABEL_DUMP_DISC ;
 int MENU_ENUM_LABEL_FAVORITES ;
 int MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR ;
 int MENU_ENUM_LABEL_HELP_LIST ;
 int MENU_ENUM_LABEL_INFORMATION_LIST ;
 int MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY ;
 int MENU_ENUM_LABEL_LOAD_CONTENT_LIST ;
 int MENU_ENUM_LABEL_LOAD_DISC ;
 int MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS ;
 int MENU_ENUM_LABEL_NETPLAY ;
 int MENU_ENUM_LABEL_ONLINE_UPDATER ;
 int MENU_ENUM_LABEL_QUIT_RETROARCH ;
 int MENU_ENUM_LABEL_REBOOT ;
 int MENU_ENUM_LABEL_RESTART_RETROARCH ;
 int MENU_ENUM_LABEL_SHUTDOWN ;
 int MENU_ENUM_LABEL_START_CORE ;
 int MENU_ENUM_LABEL_UPDATE_LAKKA ;
 int MENU_ENUM_LABEL_VALUE_DOWNLOADED_FILE_DETECT_CORE_LIST ;
 int MENU_ENUM_LABEL_VALUE_FAVORITES ;
 int MENU_ENUM_LABEL_VALUE_MENU_FILE_BROWSER_SETTINGS ;
 int MENU_SETTING_ACTION ;
 int PARSE_ACTION ;
 int RARCH_CTL_CORE_IS_RUNNING ;
 int RARCH_CTL_IS_DUMMY_CORE ;
 TYPE_3__* config_get_ptr () ;
 int core_info_get_list (int **) ;
 int core_info_list_num_info_files (int *) ;
 int frontend_driver_has_fork () ;
 int frontend_driver_parse_drive_list (int ,int) ;
 int menu_displaylist_setting (TYPE_6__*) ;
 int menu_entries_append_enum (int ,char*,char*,int ,int ,int ,int ) ;
 int menu_entries_ctl (int ,int ) ;
 int menu_subsystem_populate (struct retro_subsystem_info const*,TYPE_5__*) ;
 char* msg_hash_to_str (int ) ;
 int rarch_ctl (int ,int *) ;
 TYPE_4__* runloop_get_system_info () ;
 struct retro_subsystem_info* subsystem_data ;

__attribute__((used)) static int materialui_list_push(void *data, void *userdata,
      menu_displaylist_info_t *info, unsigned type)
{
   menu_displaylist_ctx_parse_entry_t entry;
   int ret = -1;
   core_info_list_t *list = ((void*)0);
   menu_handle_t *menu = (menu_handle_t*)data;

   (void)userdata;

   switch (type)
   {
      case 129:
         {
            menu_entries_ctl(MENU_ENTRIES_CTL_CLEAR, info->list);

            menu_entries_append_enum(info->list,
                  msg_hash_to_str(MENU_ENUM_LABEL_VALUE_FAVORITES),
                  msg_hash_to_str(MENU_ENUM_LABEL_FAVORITES),
                  MENU_ENUM_LABEL_FAVORITES,
                  MENU_SETTING_ACTION, 0, 0);

            core_info_get_list(&list);
            if (core_info_list_num_info_files(list))
            {
               menu_entries_append_enum(info->list,
                     msg_hash_to_str(MENU_ENUM_LABEL_VALUE_DOWNLOADED_FILE_DETECT_CORE_LIST),
                     msg_hash_to_str(MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST),
                     MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST,
                     MENU_SETTING_ACTION, 0, 0);
            }

            if (frontend_driver_parse_drive_list(info->list, 1) != 0)
               menu_entries_append_enum(info->list, "/",
                     msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
                     MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR,
                     MENU_SETTING_ACTION, 0, 0);

            menu_entries_append_enum(info->list,
                  msg_hash_to_str(MENU_ENUM_LABEL_VALUE_MENU_FILE_BROWSER_SETTINGS),
                  msg_hash_to_str(MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS),
                  MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS,
                  MENU_SETTING_ACTION, 0, 0);

            info->need_push = 1;
            info->need_refresh = 1;
            ret = 0;
         }
         break;
      case 128:
         {
            settings_t *settings = config_get_ptr();
            rarch_system_info_t *system = runloop_get_system_info();
            menu_entries_ctl(MENU_ENTRIES_CTL_CLEAR, info->list);

            entry.data = menu;
            entry.info = info;
            entry.parse_type = PARSE_ACTION;
            entry.add_empty_entry = 0;

            if (rarch_ctl(RARCH_CTL_CORE_IS_RUNNING, ((void*)0)))
            {
               if (!rarch_ctl(RARCH_CTL_IS_DUMMY_CORE, ((void*)0)))
               {
                  entry.enum_idx = MENU_ENUM_LABEL_CONTENT_SETTINGS;
                  menu_displaylist_setting(&entry);
               }
            }
            else
            {
               if (system->load_no_content)
               {
                  entry.enum_idx = MENU_ENUM_LABEL_START_CORE;
                  menu_displaylist_setting(&entry);
               }


               if (frontend_driver_has_fork())

               {
                  if (settings->bools.menu_show_load_core)
                  {
                     entry.enum_idx = MENU_ENUM_LABEL_CORE_LIST;
                     menu_displaylist_setting(&entry);
                  }
               }
            }

            if (settings->bools.menu_show_load_content)
            {
               const struct retro_subsystem_info* subsystem;

               entry.enum_idx = MENU_ENUM_LABEL_LOAD_CONTENT_LIST;
               menu_displaylist_setting(&entry);


               if (system->subsystem.data)
                     subsystem = system->subsystem.data;

               else
                  subsystem = subsystem_data;

               menu_subsystem_populate(subsystem, info);
            }

            if (settings->bools.menu_content_show_history)
            {
               entry.enum_idx = MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY;
               menu_displaylist_setting(&entry);
            }

            if (settings->bools.menu_show_load_disc)
            {
               entry.enum_idx = MENU_ENUM_LABEL_LOAD_DISC;
               menu_displaylist_setting(&entry);
            }

            if (settings->bools.menu_show_dump_disc)
            {
               entry.enum_idx = MENU_ENUM_LABEL_DUMP_DISC;
               menu_displaylist_setting(&entry);
            }
            if (settings->bools.menu_show_information)
            {
               entry.enum_idx = MENU_ENUM_LABEL_INFORMATION_LIST;
               menu_displaylist_setting(&entry);
            }

            if (settings->bools.menu_show_configurations)
            {
               entry.enum_idx = MENU_ENUM_LABEL_CONFIGURATIONS_LIST;
               menu_displaylist_setting(&entry);
            }

            if (settings->bools.menu_show_help)
            {
               entry.enum_idx = MENU_ENUM_LABEL_HELP_LIST;
               menu_displaylist_setting(&entry);
            }


            if (settings->bools.menu_show_restart_retroarch)
            {
               entry.enum_idx = MENU_ENUM_LABEL_RESTART_RETROARCH;
               menu_displaylist_setting(&entry);
            }

            entry.enum_idx = MENU_ENUM_LABEL_QUIT_RETROARCH;
            menu_displaylist_setting(&entry);
            info->need_push = 1;
            ret = 0;
         }
         break;
   }
   return ret;
}
