#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ DYN_VALUE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * g_dyn_value_list ; 

UINT64 FUNC5(char *name)
{
	UINT64 ret = 0;
	// Validate arguments
	if (name == NULL)
	{
		return 0;
	}

	if (g_dyn_value_list == NULL)
	{
		return 0;
	}

	FUNC2(g_dyn_value_list);
	{
		UINT i;

		for (i = 0; i < FUNC1(g_dyn_value_list);i++)
		{
			DYN_VALUE *vv = FUNC0(g_dyn_value_list, i);

			if (FUNC3(vv->Name, name) == 0)
			{
				ret = vv->Value;
				break;
			}
		}
	}
	FUNC4(g_dyn_value_list);

	return ret;
}