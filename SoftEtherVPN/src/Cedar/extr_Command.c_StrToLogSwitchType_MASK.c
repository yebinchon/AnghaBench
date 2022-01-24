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
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  LOG_SWITCH_DAY ; 
 int /*<<< orphan*/  LOG_SWITCH_HOUR ; 
 int /*<<< orphan*/  LOG_SWITCH_MINUTE ; 
 int /*<<< orphan*/  LOG_SWITCH_MONTH ; 
 int /*<<< orphan*/  LOG_SWITCH_NO ; 
 int /*<<< orphan*/  LOG_SWITCH_SECOND ; 
 scalar_t__ FUNC1 (char*,char*) ; 

UINT FUNC2(char *str)
{
	UINT ret = INFINITE;
	// Validate arguments
	if (str == NULL)
	{
		return INFINITE;
	}

	if (FUNC0(str) || FUNC1("none", str))
	{
		ret = LOG_SWITCH_NO;
	}
	else if (FUNC1("second", str))
	{
		ret = LOG_SWITCH_SECOND;
	}
	else if (FUNC1("minute", str))
	{
		ret = LOG_SWITCH_MINUTE;
	}
	else if (FUNC1("hour", str))
	{
		ret = LOG_SWITCH_HOUR;
	}
	else if (FUNC1("day", str))
	{
		ret = LOG_SWITCH_DAY;
	}
	else if (FUNC1("month", str))
	{
		ret = LOG_SWITCH_MONTH;
	}

	return ret;
}