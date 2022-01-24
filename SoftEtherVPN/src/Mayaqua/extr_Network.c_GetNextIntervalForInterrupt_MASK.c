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
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int /*<<< orphan*/ * TickList; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ INTERRUPT_MANAGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ INFINITE ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

UINT FUNC10(INTERRUPT_MANAGER *m)
{
	UINT ret = INFINITE;
	UINT i;
	LIST *o = NULL;
	UINT64 now = FUNC8();
	// Validate arguments
	if (m == NULL)
	{
		return 0;
	}

	FUNC5(m->TickList);
	{
		// Remove entries older than now already
		for (i = 0;i < FUNC4(m->TickList);i++)
		{
			UINT64 *v = FUNC3(m->TickList, i);

			if (now >= *v)
			{
				ret = 0;

				if (o == NULL)
				{
					o = FUNC6(NULL);
				}

				FUNC0(o, v);
			}
			else
			{
				break;
			}
		}

		for (i = 0;i < FUNC4(o);i++)
		{
			UINT64 *v = FUNC3(o, i);

			FUNC2(v);

			FUNC1(m->TickList, v);
		}

		if (o != NULL)
		{
			FUNC7(o);
		}

		if (ret == INFINITE)
		{
			if (FUNC4(m->TickList) >= 1)
			{
				UINT64 *v = FUNC3(m->TickList, 0);

				ret = (UINT)(*v - now);
			}
		}
	}
	FUNC9(m->TickList);

	return ret;
}