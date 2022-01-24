#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_2__ {int /*<<< orphan*/  OsType; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4()
{
	UINT type = FUNC0()->OsType;

	if (FUNC3(type))
	{
		if (FUNC1())
		{
			return true;
		}
		else
		{
			bool ret = false;

#ifdef	OS_WIN32
			ret = MsIsAdmin();
#endif	// OS_WIN32

			return ret;
		}
	}
	else
	{
		return FUNC1();
	}
}