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
 int /*<<< orphan*/  fs_klist ; 
 int /*<<< orphan*/  fs_klist_lck_grp ; 
 int /*<<< orphan*/  fs_klist_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{

	FUNC0(&fs_klist);
	fs_klist_lck_grp = FUNC1("fs_klist", NULL);
	fs_klist_lock = FUNC2(fs_klist_lck_grp, NULL);
}