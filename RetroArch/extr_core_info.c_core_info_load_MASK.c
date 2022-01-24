#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  core_info_t ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ core_info_ctx_find_t ;

/* Variables and functions */
 int /*<<< orphan*/  core_info_curr_list ; 
 int /*<<< orphan*/  core_info_current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool FUNC3(core_info_ctx_find_t *info)
{
   core_info_t *core_info     = NULL;

   if (!info)
      return false;

   if (!core_info_current)
      FUNC1();

   FUNC0(&core_info);

   if (!core_info_curr_list)
      return false;

   if (!FUNC2(core_info_curr_list,
            core_info, info->path))
      return false;

   return true;
}