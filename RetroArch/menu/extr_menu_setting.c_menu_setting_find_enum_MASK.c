#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int enum_idx; char* short_description; int /*<<< orphan*/  (* read_handler ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ rarch_setting_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SETTINGS_GET ; 
 scalar_t__ ST_GROUP ; 
 scalar_t__ ST_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

rarch_setting_t *FUNC4(enum msg_hash_enums enum_idx)
{
   rarch_setting_t *setting = NULL;
   rarch_setting_t **list   = &setting;

   if (enum_idx == 0)
      return NULL;

   FUNC0(MENU_ENTRIES_CTL_SETTINGS_GET, &setting);

   if (!setting)
      return NULL;
   for (; FUNC1(setting) != ST_NONE; (*list = *list + 1))
   {
      if (  setting->enum_idx == enum_idx && 
            FUNC1(setting) <= ST_GROUP)
      {
         const char *short_description = setting->short_description;
         if (FUNC2(short_description))
            return NULL;

         if (setting->read_handler)
            setting->read_handler(setting);

         return setting;
      }
   }

   return NULL;
}