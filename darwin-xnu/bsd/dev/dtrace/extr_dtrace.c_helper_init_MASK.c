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
 int /*<<< orphan*/  DEVFS_CHAR ; 
 int /*<<< orphan*/  DTRACEMNR_HELPER ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  HELPER_MAJOR ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gDTraceInited ; 
 int /*<<< orphan*/  helper_cdevsw ; 
 scalar_t__ helper_majdevno ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5( void )
{
	/*
	 * Once the "helper" is initialized, it can take ioctl calls that use locks
	 * and zones initialized in dtrace_init. Make certain dtrace_init was called
	 * before us.
	 */

	if (!gDTraceInited) {
		FUNC3("helper_init before dtrace_init\n");
	}

	if (0 >= helper_majdevno)
	{
		helper_majdevno = FUNC0(HELPER_MAJOR, &helper_cdevsw);
		
		if (helper_majdevno < 0) {
			FUNC4("helper_init: failed to allocate a major number!\n");
			return;
		}
		
		if (NULL == FUNC1( FUNC2(helper_majdevno, 0), DEVFS_CHAR, UID_ROOT, GID_WHEEL, 0666, 
					DTRACEMNR_HELPER, 0 )) {
			FUNC4("dtrace_init: failed to devfs_make_node for helper!\n");
			return;
		}
	} else
		FUNC3("helper_init: called twice!\n");
}