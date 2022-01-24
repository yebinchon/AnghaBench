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
typedef  scalar_t__ time_t ;
struct tm {int wYear; } ;
typedef  struct tm SYSTEMTIME ;
typedef  scalar_t__ INT64 ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,struct tm*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*,struct tm*) ; 
 scalar_t__ FUNC2 (struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (struct tm*,struct tm*) ; 
 scalar_t__ FUNC4 (struct tm*) ; 
 struct tm* FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,struct tm*) ; 
 struct tm* FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,struct tm*) ; 
 scalar_t__ FUNC9 (struct tm*) ; 

INT64 FUNC10(SYSTEMTIME *basetime, bool local_time)
{
	time_t tmp;
	struct tm t1, t2;
	SYSTEMTIME snow;
	struct tm now;
	SYSTEMTIME s1, s2;
	INT64 ret;

	FUNC0(&snow, basetime, sizeof(SYSTEMTIME));

	if (sizeof(time_t) == 4)
	{
		if (snow.wYear >= 2038)
		{
			// For old systems: avoid the 2038-year problem
			snow.wYear = 2037;
		}
	}

	FUNC1(&now, &snow);
	if (local_time == false)
	{
		tmp = (time_t)FUNC4(&now);
	}
	else
	{
		tmp = FUNC9(&now);
	}

	if (tmp == (time_t)-1)
	{
		return 0;
	}

#ifndef	OS_UNIX
	FUNC0(&t1, FUNC7(&tmp), sizeof(struct tm));
	FUNC0(&t2, FUNC5(&tmp), sizeof(struct tm));
#else	// OS_UNIX
	localtime_r(&tmp, &t1);
	gmtime_r(&tmp, &t2);
#endif	// OS_UNIX

	FUNC3(&s1, &t1);
	FUNC3(&s2, &t2);

	ret = (INT)FUNC2(&s1) - (INT)FUNC2(&s2);

	return ret;
}