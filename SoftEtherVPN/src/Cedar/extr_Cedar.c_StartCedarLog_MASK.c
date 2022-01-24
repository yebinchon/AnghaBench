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
 int /*<<< orphan*/  LOG_SWITCH_DAY ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  cedar_log ; 
 int /*<<< orphan*/ * cedar_log_ref ; 

void FUNC3()
{
	if (cedar_log_ref == NULL)
	{
		cedar_log_ref = FUNC2();
	}
	else
	{
		FUNC0(cedar_log_ref);
	}

	cedar_log = FUNC1("debug_log", "debug", LOG_SWITCH_DAY);
}