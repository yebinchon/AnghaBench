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
 int /*<<< orphan*/  apple_protect_pager_lck_attr ; 
 int /*<<< orphan*/  apple_protect_pager_lck_grp ; 
 int /*<<< orphan*/  apple_protect_pager_lck_grp_attr ; 
 int /*<<< orphan*/  apple_protect_pager_lock ; 
 int /*<<< orphan*/  apple_protect_pager_queue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(void)
{
	FUNC1(&apple_protect_pager_lck_grp_attr);
	FUNC2(&apple_protect_pager_lck_grp, "apple_protect", &apple_protect_pager_lck_grp_attr);
	FUNC0(&apple_protect_pager_lck_attr);
	FUNC3(&apple_protect_pager_lock, &apple_protect_pager_lck_grp, &apple_protect_pager_lck_attr);
	FUNC4(&apple_protect_pager_queue);
}