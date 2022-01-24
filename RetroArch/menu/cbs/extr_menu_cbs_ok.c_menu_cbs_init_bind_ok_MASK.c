#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  menu_file_list_cbs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  action_ok_lookup_setting ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC3(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx,
      uint32_t label_hash, uint32_t menu_label_hash)
{
   if (!cbs)
      return -1;

   FUNC0(cbs, action_ok_lookup_setting);

   if (FUNC1(cbs, label, label_hash) == 0)
      return 0;

   if (FUNC2(cbs, label_hash, menu_label_hash, type) == 0)
      return 0;

   return -1;
}