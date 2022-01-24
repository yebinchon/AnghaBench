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
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  EVENT ;

/* Variables and functions */
 scalar_t__ INFINITE ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

bool FUNC4(EVENT *e, UINT timeout, volatile bool *cancel)
{
	bool dummy_bool = false;
	UINT64 start, giveup;
	// Validate arguments
	if (cancel == NULL)
	{
		cancel = &dummy_bool;
	}

	start = FUNC2();

	if (timeout == INFINITE || timeout == 0x7FFFFFFF)
	{
		giveup = 0;
	}
	else
	{
		giveup = start + (UINT64)timeout;
	}

	while (true)
	{
		UINT64 now = FUNC2();
		UINT interval_to_giveup = (UINT)(giveup - now);
		if (giveup == 0)
		{
			interval_to_giveup = INFINITE;
		}
		else
		{
			if (now >= giveup)
			{
				// Time-out occurs
				return false;
			}
		}

		interval_to_giveup = FUNC0(interval_to_giveup, 25);

		if (*cancel)
		{
			// Cancel flag is set to true. Time-out occurs
			return false;
		}

		if (e != NULL)
		{
			if (FUNC3(e, interval_to_giveup))
			{
				// Event is set
				return true;
			}
		}
		else
		{
			FUNC1(interval_to_giveup);
		}
	}
}