#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  ui_type; } ;
typedef  TYPE_1__ rarch_setting_t ;
struct TYPE_16__ {int index; } ;
typedef  TYPE_2__ rarch_setting_info_t ;
struct TYPE_17__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ rarch_setting_group_info_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef  int /*<<< orphan*/  change_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,TYPE_2__*,int) ; 
 int /*<<< orphan*/  SD_FLAG_ALLOW_EMPTY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ST_PATH ; 
 int /*<<< orphan*/  ST_UI_TYPE_FILE_SELECTOR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(
      rarch_setting_t **list,
      rarch_setting_info_t *list_info,
      char *target, size_t len,
      enum msg_hash_enums name_enum_idx,
      enum msg_hash_enums SHORT_enum_idx,
      const char *default_value,
      rarch_setting_group_info_t *group_info,
      rarch_setting_group_info_t *subgroup_info,
      const char *parent_group,
      change_handler_t change_handler, change_handler_t read_handler)
{
   (*list)[list_info->index++]             = FUNC4(ST_PATH,
         FUNC3(name_enum_idx),
         FUNC3(SHORT_enum_idx),
         target, (unsigned)len, default_value, "",
         group_info->name, subgroup_info->name, parent_group,
         change_handler, read_handler,
         false);
   (*list)[list_info->index - 1].ui_type   = ST_UI_TYPE_FILE_SELECTOR;
   FUNC2(list, list_info, SD_FLAG_ALLOW_EMPTY);
   FUNC0(list, list_info, name_enum_idx);
   FUNC1(list, list_info, SHORT_enum_idx);
}