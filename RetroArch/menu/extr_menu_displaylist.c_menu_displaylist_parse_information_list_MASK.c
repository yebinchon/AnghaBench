#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct string_list {scalar_t__ size; } ;
struct retro_system_info {int /*<<< orphan*/  library_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
typedef  TYPE_1__ menu_displaylist_info_t ;
struct TYPE_6__ {scalar_t__ config_data; } ;
typedef  TYPE_2__ core_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_CORE_COUNTERS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CORE_INFORMATION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CURSOR_MANAGER_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DATABASE_MANAGER_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DISC_INFORMATION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_FRONTEND_COUNTERS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_NETWORK_INFORMATION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SYSTEM_INFORMATION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_CORE_COUNTERS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_CORE_INFORMATION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_CURSOR_MANAGER ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_DATABASE_MANAGER ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_DISC_INFORMATION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_FRONTEND_COUNTERS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NETWORK_INFORMATION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NO_CORE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_SYSTEM_INFORMATION ; 
 int /*<<< orphan*/  MENU_SETTING_ACTION ; 
 int /*<<< orphan*/  RARCH_CTL_IS_PERFCNT_ENABLE ; 
 struct string_list* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct retro_system_info* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct string_list*) ; 

__attribute__((used)) static unsigned FUNC9(
      menu_displaylist_info_t *info)
{
   unsigned count                   = 0;
   core_info_t   *core_info         = NULL;
   struct retro_system_info *system = FUNC5();

   FUNC1(&core_info);

   if (  system &&
         (!FUNC6(system->library_name) &&
          !FUNC7(system->library_name,
             FUNC3(MENU_ENUM_LABEL_VALUE_NO_CORE))
         )
         && core_info && core_info->config_data
      )
      if (FUNC2(info->list,
            FUNC3(MENU_ENUM_LABEL_VALUE_CORE_INFORMATION),
            FUNC3(MENU_ENUM_LABEL_CORE_INFORMATION),
            MENU_ENUM_LABEL_CORE_INFORMATION,
            MENU_SETTING_ACTION, 0, 0))
         count++;

#ifdef HAVE_CDROM
   {
      struct string_list *drive_list = cdrom_get_available_drives();

      if (drive_list)
      {
         if (drive_list->size)
         {
            if (menu_entries_append_enum(info->list,
                  msg_hash_to_str(MENU_ENUM_LABEL_VALUE_DISC_INFORMATION),
                  msg_hash_to_str(MENU_ENUM_LABEL_DISC_INFORMATION),
                  MENU_ENUM_LABEL_DISC_INFORMATION,
                  MENU_SETTING_ACTION, 0, 0))
               count++;
         }

         string_list_free(drive_list);
      }
   }
#endif

#ifdef HAVE_NETWORKING
#ifndef HAVE_SOCKET_LEGACY
   if (menu_entries_append_enum(info->list,
         msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NETWORK_INFORMATION),
         msg_hash_to_str(MENU_ENUM_LABEL_NETWORK_INFORMATION),
         MENU_ENUM_LABEL_NETWORK_INFORMATION,
         MENU_SETTING_ACTION, 0, 0))
      count++;
#endif
#endif

   if (FUNC2(info->list,
         FUNC3(MENU_ENUM_LABEL_VALUE_SYSTEM_INFORMATION),
         FUNC3(MENU_ENUM_LABEL_SYSTEM_INFORMATION),
         MENU_ENUM_LABEL_SYSTEM_INFORMATION,
         MENU_SETTING_ACTION, 0, 0))
      count++;

#ifdef HAVE_LIBRETRODB
   if (menu_entries_append_enum(info->list,
         msg_hash_to_str(MENU_ENUM_LABEL_VALUE_DATABASE_MANAGER),
         msg_hash_to_str(MENU_ENUM_LABEL_DATABASE_MANAGER_LIST),
         MENU_ENUM_LABEL_DATABASE_MANAGER_LIST,
         MENU_SETTING_ACTION, 0, 0))
      count++;
   if (menu_entries_append_enum(info->list,
         msg_hash_to_str(MENU_ENUM_LABEL_VALUE_CURSOR_MANAGER),
         msg_hash_to_str(MENU_ENUM_LABEL_CURSOR_MANAGER_LIST),
         MENU_ENUM_LABEL_CURSOR_MANAGER_LIST,
         MENU_SETTING_ACTION, 0, 0))
      count++;
#endif

   if (FUNC4(RARCH_CTL_IS_PERFCNT_ENABLE, NULL))
   {
      if (FUNC2(info->list,
            FUNC3(MENU_ENUM_LABEL_VALUE_FRONTEND_COUNTERS),
            FUNC3(MENU_ENUM_LABEL_FRONTEND_COUNTERS),
            MENU_ENUM_LABEL_FRONTEND_COUNTERS,
            MENU_SETTING_ACTION, 0, 0))
         count++;

      if (FUNC2(info->list,
            FUNC3(MENU_ENUM_LABEL_VALUE_CORE_COUNTERS),
            FUNC3(MENU_ENUM_LABEL_CORE_COUNTERS),
            MENU_ENUM_LABEL_CORE_COUNTERS,
            MENU_SETTING_ACTION, 0, 0))
         count++;
   }

   return count;
}