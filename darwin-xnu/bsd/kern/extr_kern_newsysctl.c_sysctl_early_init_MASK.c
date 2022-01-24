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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_geometry_lock ; 
 int /*<<< orphan*/  sysctl_lock_group ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  sysctl_unlocked_node_lock ; 

void
FUNC4(void)
{
	/*
	 * Initialize the geometry lock for reading/modifying the
	 * sysctl tree. This is done here because IOKit registers
	 * some sysctl's before bsd_init() would otherwise perform
	 * subsystem initialization.
	 */

	sysctl_lock_group  = FUNC0("sysctl", NULL);
	sysctl_geometry_lock = FUNC2(sysctl_lock_group, NULL);
	sysctl_unlocked_node_lock = FUNC1(sysctl_lock_group, NULL);

	FUNC3("__sysctl_set");
}