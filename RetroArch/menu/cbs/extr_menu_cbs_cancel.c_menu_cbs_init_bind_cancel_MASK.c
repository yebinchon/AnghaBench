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
typedef  int /*<<< orphan*/  menu_file_list_cbs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  action_cancel_pop_default ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 

int FUNC3(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx)
{
   if (!cbs)
      return -1;

   FUNC0(cbs, action_cancel_pop_default);

   if (FUNC1(cbs, label) == 0)
      return 0;

   if (FUNC2(
            cbs, type) == 0)
      return 0;

   return -1;
}