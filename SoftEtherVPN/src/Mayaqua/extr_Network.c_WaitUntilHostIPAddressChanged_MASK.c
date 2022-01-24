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
typedef  int UINT ;
typedef  int /*<<< orphan*/  EVENT ;

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (int,int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

void FUNC5(void *p, EVENT *event, UINT timeout, UINT ip_check_interval)
{
	UINT64 start, end;
	UINT last_hash;
	// Validate arguments
	if (timeout == 0x7FFFFFFF)
	{
		timeout = 0xFFFFFFFF;
	}
	if (ip_check_interval == 0)
	{
		ip_check_interval = 0xFFFFFFFF;
	}
	if (event == NULL || timeout == 0)
	{
		return;
	}

	start = FUNC3();
	end = start + (UINT64)timeout;
	last_hash = FUNC0();

	while (true)
	{
		UINT64 now = FUNC3();
		UINT next_interval;

		if (now >= end)
		{
			break;
		}

		if (p != NULL)
		{
			if (FUNC1(p))
			{
				break;
			}
		}

		if (last_hash != FUNC0())
		{
			break;
		}

		next_interval = (UINT)(end - now);
		next_interval = FUNC2(next_interval, ip_check_interval);

		if (FUNC4(event, next_interval))
		{
			break;
		}
	}
}