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
typedef  int /*<<< orphan*/  dev_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYSTRACE_MAJOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  systrace_cdevsw ; 

void FUNC5( void )
{
	if (FUNC1()) {
		return;
	}

	int majdevno = FUNC0(SYSTRACE_MAJOR, &systrace_cdevsw);

	if (majdevno < 0) {
		FUNC3("systrace_init: failed to allocate a major number!\n");
		return;
	}

	FUNC4((dev_info_t*)(uintptr_t)majdevno);
	FUNC2((dev_info_t*)(uintptr_t)majdevno);
}