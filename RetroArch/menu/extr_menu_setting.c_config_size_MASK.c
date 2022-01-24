#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  ui_type; } ;
typedef  TYPE_1__ rarch_setting_t ;
struct TYPE_14__ {int index; } ;
typedef  TYPE_2__ rarch_setting_info_t ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ rarch_setting_group_info_t ;
typedef  int /*<<< orphan*/  get_string_representation_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef  int /*<<< orphan*/  change_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,TYPE_2__*,int) ; 
 int /*<<< orphan*/  ST_UI_TYPE_SIZE_SPINBOX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
      rarch_setting_t **list,
      rarch_setting_info_t *list_info,
      size_t *target,
      enum msg_hash_enums name_enum_idx,
      enum msg_hash_enums SHORT_enum_idx,
      size_t default_value,
      rarch_setting_group_info_t *group_info,
      rarch_setting_group_info_t *subgroup_info,
      const char *parent_group,
      change_handler_t change_handler, change_handler_t read_handler,
	  get_string_representation_t string_representation_handler)
{
   (*list)[list_info->index++] = FUNC3  (
         FUNC2(name_enum_idx),
         FUNC2(SHORT_enum_idx),
         target, default_value,
         group_info->name,
         subgroup_info->name, parent_group,
         change_handler, read_handler,
         false, string_representation_handler);
   (*list)[list_info->index - 1].ui_type   = ST_UI_TYPE_SIZE_SPINBOX;

   FUNC0(list, list_info, name_enum_idx);
   FUNC1(list, list_info, SHORT_enum_idx);
}