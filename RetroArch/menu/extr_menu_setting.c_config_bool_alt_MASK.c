#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  rarch_setting_t ;
struct TYPE_7__ {int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ rarch_setting_info_t ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ rarch_setting_group_info_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef  int /*<<< orphan*/  change_handler_t ;

/* Variables and functions */
 scalar_t__ SD_FLAG_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(
      rarch_setting_t **list,
      rarch_setting_info_t *list_info,
      bool *target,
      const char *name, const char *SHORT,
      bool default_value,
      enum msg_hash_enums off_enum_idx,
      enum msg_hash_enums on_enum_idx,
      rarch_setting_group_info_t *group_info,
      rarch_setting_group_info_t *subgroup_info,
      const char *parent_group,
      change_handler_t change_handler,
      change_handler_t read_handler,
      uint32_t flags)
{
   (*list)[list_info->index++] = FUNC2(name, SHORT, target,
         default_value,
         FUNC1(off_enum_idx), FUNC1(on_enum_idx),
         group_info->name, subgroup_info->name, parent_group,
         change_handler, read_handler, true);
   if (flags != SD_FLAG_NONE)
      FUNC0(list, list_info, flags);
}