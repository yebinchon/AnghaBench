
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int kiosk_mode_enable; scalar_t__ menu_show_core_updater; } ;
struct TYPE_8__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_9__ {int* list; int menu_list; scalar_t__ need_push_no_playlist_entries; scalar_t__ need_push; scalar_t__ need_clear; scalar_t__ need_refresh; scalar_t__ push_builtin_cores; scalar_t__ download_core; scalar_t__ need_sort; scalar_t__ need_entries_refresh; scalar_t__ need_navigation_clear; } ;
typedef TYPE_3__ menu_displaylist_info_t ;


 int FILE_TYPE_CORE ;
 int MENU_ENTRIES_CTL_REFRESH ;
 int MENU_ENTRIES_CTL_SET_REFRESH ;
 int MENU_ENUM_LABEL_CORE_UPDATER_LIST ;
 int MENU_ENUM_LABEL_NO_PLAYLIST_ENTRIES_AVAILABLE ;
 int MENU_ENUM_LABEL_SIDELOAD_CORE_LIST ;
 int MENU_ENUM_LABEL_START_NET_RETROPAD ;
 int MENU_ENUM_LABEL_START_VIDEO_PROCESSOR ;
 int MENU_ENUM_LABEL_VALUE_DOWNLOAD_CORE ;
 int MENU_ENUM_LABEL_VALUE_NO_PLAYLIST_ENTRIES_AVAILABLE ;
 int MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_LIST ;
 int MENU_ENUM_LABEL_VALUE_START_NET_RETROPAD ;
 int MENU_ENUM_LABEL_VALUE_START_VIDEO_PROCESSOR ;
 int MENU_INFO_MESSAGE ;
 int MENU_NAVIGATION_CTL_CLEAR ;
 int MENU_SETTING_ACTION ;
 int MSG_UNKNOWN ;
 TYPE_2__* config_get_ptr () ;
 int file_list_set_alt_at_offset (int*,int ,char*) ;
 int file_list_sort_on_alt (int*) ;
 int menu_driver_ctl (int ,int*) ;
 int menu_driver_populate_entries (TYPE_3__*) ;
 int menu_entries_append_enum (int*,int ,int ,int ,int ,int ,int ) ;
 int menu_entries_ctl (int ,int*) ;
 int menu_entries_prepend (int*,char*,char*,int ,int ,int ,int ) ;
 int menu_navigation_set_selection (size_t) ;
 int msg_hash_to_str (int ) ;
 char* new_entry ;
 char* new_lbl_entry ;
 char* new_path_entry ;
 int new_type ;
 int string_is_empty (char*) ;
 int ui_companion_driver_notify_list_loaded (int*,int ) ;

bool menu_displaylist_process(menu_displaylist_info_t *info)
{
   size_t idx = 0;




   if (info->need_navigation_clear)
   {
      bool pending_push = 1;
      menu_driver_ctl(MENU_NAVIGATION_CTL_CLEAR, &pending_push);
   }

   if (info->need_entries_refresh)
   {
      bool refresh = 0;
      menu_entries_ctl(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
   }

   if (info->need_sort)
      file_list_sort_on_alt(info->list);
   if (info->push_builtin_cores)
   {
   }

   if (!string_is_empty(new_entry))
   {
      menu_entries_prepend(info->list,
            new_path_entry,
            new_lbl_entry,
            new_type,
            FILE_TYPE_CORE, 0, 0);
      file_list_set_alt_at_offset(info->list, 0,
            new_entry);

      new_type = MSG_UNKNOWN;
      new_lbl_entry[0] = '\0';
      new_path_entry[0] = '\0';
      new_entry[0] = '\0';
   }

   if (info->need_refresh)
      menu_entries_ctl(MENU_ENTRIES_CTL_REFRESH, info->list);

   if (info->need_clear)
      menu_navigation_set_selection(idx);

   if (info->need_push)
   {
      if (info->need_push_no_playlist_entries)
         menu_entries_append_enum(info->list,
               msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_NO_PLAYLIST_ENTRIES_AVAILABLE),
               msg_hash_to_str(
                  MENU_ENUM_LABEL_NO_PLAYLIST_ENTRIES_AVAILABLE),
               MENU_ENUM_LABEL_NO_PLAYLIST_ENTRIES_AVAILABLE,
               MENU_INFO_MESSAGE, 0, 0);

      menu_driver_populate_entries(info);
      ui_companion_driver_notify_list_loaded(info->list, info->menu_list);
   }
   return 1;
}
