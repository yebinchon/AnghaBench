#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_10__ {int /*<<< orphan*/  ref; } ;
struct TYPE_9__ {int /*<<< orphan*/  PoolWaitList; scalar_t__ PoolHalting; } ;
typedef  TYPE_1__ THREAD ;
typedef  TYPE_2__ EVENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 

bool FUNC8(THREAD *t, UINT timeout)
{
	bool ret = false;
	EVENT *e = NULL;
	// Validate arguments
	if (t == NULL)
	{
		return false;
	}

	FUNC3(t->PoolWaitList);
	{
		if (t->PoolHalting)
		{
			// Has already been stopped
			ret = true;
		}
		else
		{
			// Register the completion notifying event to the list
			e = FUNC4();
			FUNC0(e->ref);
			FUNC2(t->PoolWaitList, e);
		}
	}
	FUNC6(t->PoolWaitList);

	if (e != NULL)
	{
		// Wait Event
		ret = FUNC7(e, timeout);

		FUNC3(t->PoolWaitList);
		{
			if (FUNC1(t->PoolWaitList, e))
			{
				FUNC5(e);
			}
		}
		FUNC6(t->PoolWaitList);

		FUNC5(e);
	}

	return ret;
}