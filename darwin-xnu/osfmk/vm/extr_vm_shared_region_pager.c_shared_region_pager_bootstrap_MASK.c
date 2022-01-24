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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shared_region_pager_lck_attr ; 
 int /*<<< orphan*/  shared_region_pager_lck_grp ; 
 int /*<<< orphan*/  shared_region_pager_lck_grp_attr ; 
 int /*<<< orphan*/  shared_region_pager_lock ; 
 int /*<<< orphan*/  shared_region_pager_queue ; 

void
FUNC5(void)
{
	FUNC1(&shared_region_pager_lck_grp_attr);
	FUNC2(&shared_region_pager_lck_grp, "shared_region", &shared_region_pager_lck_grp_attr);
	FUNC0(&shared_region_pager_lck_attr);
	FUNC3(&shared_region_pager_lock, &shared_region_pager_lck_grp, &shared_region_pager_lck_attr);
	FUNC4(&shared_region_pager_queue);
}