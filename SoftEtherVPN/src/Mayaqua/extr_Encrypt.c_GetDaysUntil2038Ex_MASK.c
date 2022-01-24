#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  st ;
typedef  int /*<<< orphan*/  now ;
typedef  scalar_t__ UINT64 ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int wYear; int wMonth; int wDay; } ;
typedef  TYPE_1__ SYSTEMTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

UINT FUNC5()
{
	SYSTEMTIME now;

	FUNC4(&now, sizeof(now));
	FUNC1(&now);

	if (now.wYear >= 2030)
	{
		UINT64 now = FUNC2();
		UINT64 target;
		SYSTEMTIME st;

		FUNC4(&st, sizeof(st));
		st.wYear = 2049;
		st.wMonth = 12;
		st.wDay = 30;

		target = FUNC3(&st);

		if (now >= target)
		{
			return 0;
		}
		else
		{
			return (UINT)((target - now) / (UINT64)(1000 * 60 * 60 * 24));
		}
	}
	else
	{
		return FUNC0();
	}
}