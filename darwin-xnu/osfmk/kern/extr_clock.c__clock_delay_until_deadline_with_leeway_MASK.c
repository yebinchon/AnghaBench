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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  TIMEOUT_URGENCY_LEEWAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ clock_delay_until ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(
	uint64_t		interval,
	uint64_t		deadline,
	uint64_t		leeway)
{

	if (interval == 0)
		return;

	if (	FUNC4(interval)	||
			FUNC2() != 0				||
			FUNC5() == FALSE	) {
		FUNC3(interval, deadline);
	} else {
		/*
		 * For now, assume a leeway request of 0 means the client does not want a leeway
		 * value. We may want to change this interpretation in the future.
		 */

		if (leeway) {
			FUNC1((event_t)clock_delay_until, THREAD_UNINT, TIMEOUT_URGENCY_LEEWAY, deadline, leeway);
		} else {
			FUNC0((event_t)clock_delay_until, THREAD_UNINT, deadline);
		}

		FUNC6(THREAD_CONTINUE_NULL);
	}
}