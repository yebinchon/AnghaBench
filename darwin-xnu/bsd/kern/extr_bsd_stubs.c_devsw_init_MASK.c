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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * devsw_lock_grp ; 
 int /*<<< orphan*/  devsw_lock_list_mtx ; 
 int /*<<< orphan*/  devsw_locks ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4()
{
	devsw_lock_grp = FUNC2("devsw", NULL);
	FUNC1(devsw_lock_grp != NULL);

	FUNC3(&devsw_lock_list_mtx, devsw_lock_grp, NULL);
	FUNC0(&devsw_locks);
}