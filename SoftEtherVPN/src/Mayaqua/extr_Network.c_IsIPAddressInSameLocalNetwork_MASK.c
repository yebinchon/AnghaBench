#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int* addr; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

bool FUNC7(IP *a)
{
	bool ret = false;
	LIST *o;
	UINT i;
	// Validate arguments
	if (a == NULL)
	{
		return false;
	}

	o = FUNC1();

	if (o != NULL)
	{
		for (i = 0;i < FUNC6(o);i++)
		{
			IP *p = FUNC5(o, i);

			if (FUNC2(p))
			{
				if (FUNC4(p) == false && p->addr[0] != 127)
				{
					if (FUNC3(p, a))
					{
						ret = true;
						break;
					}
				}
			}
		}

		FUNC0(o);
	}

	return ret;
}