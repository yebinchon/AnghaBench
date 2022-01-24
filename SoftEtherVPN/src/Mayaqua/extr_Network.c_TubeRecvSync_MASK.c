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
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  Event; int /*<<< orphan*/  Queue; } ;
typedef  int /*<<< orphan*/  TUBEDATA ;
typedef  TYPE_1__ TUBE ;
typedef  int /*<<< orphan*/  SOCK_EVENT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 scalar_t__ INFINITE ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 

TUBEDATA *FUNC9(TUBE *t, UINT timeout)
{
	UINT64 start_tick, timeout_tick;
	TUBEDATA *d = NULL;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	if (FUNC2(t) == false)
	{
		return NULL;
	}

	start_tick = FUNC5();
	timeout_tick = start_tick + (UINT64)timeout;

	while (true)
	{
		UINT64 now = FUNC5();
		UINT remain_time;
		SOCK_EVENT *e;
		UINT interval;

		d = NULL;

		if (FUNC2(t) == false)
		{
			break;
		}

		FUNC3(t->Queue);
		{
			d = FUNC0(t->Queue);
		}
		FUNC6(t->Queue);

		if (d != NULL)
		{
			break;
		}

		if (timeout != INFINITE && now >= timeout_tick)
		{
			return NULL;
		}

		remain_time = (UINT)(timeout_tick - now);

		e = FUNC1(t);

		interval = (timeout == INFINITE ? INFINITE : remain_time);

		if (e == NULL)
		{
			FUNC7(t->Event, interval);
		}
		else
		{
			FUNC8(e, interval);

			FUNC4(e);
		}
	}

	return d;
}