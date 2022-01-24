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
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  DBG_MACH_SYSDIAGNOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSDIAGNOSE_NOTIFY_USER ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC7(uint32_t keycode)
{
	mach_port_t user_port;
	kern_return_t kr;

	kr = FUNC3(FUNC4(), &user_port);
	if ((kr != KERN_SUCCESS) || !FUNC0(user_port)) {
		return kr;
	}

	FUNC1(FUNC2(DBG_MACH_SYSDIAGNOSE, SYSDIAGNOSE_NOTIFY_USER) | DBG_FUNC_START, 0, 0, 0, 0, 0);

	kr = FUNC6(user_port, keycode);
	FUNC5(user_port);
	return kr;
}