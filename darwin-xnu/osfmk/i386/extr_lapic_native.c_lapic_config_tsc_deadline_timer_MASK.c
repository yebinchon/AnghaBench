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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int LAPIC_LVT_MASKED ; 
 int LAPIC_LVT_PERIODIC ; 
 int LAPIC_LVT_TSC_DEADLINE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LVT_TIMER ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 

void
FUNC8(void)
{
	uint32_t	timer_vector;

	FUNC0("lapic_config_tsc_deadline_timer()\n");
	FUNC5();
	timer_vector = FUNC1(LVT_TIMER);
	timer_vector &= ~(LAPIC_LVT_MASKED |
			  LAPIC_LVT_PERIODIC);
	timer_vector |= LAPIC_LVT_TSC_DEADLINE;
	FUNC2(LVT_TIMER, timer_vector);

	/* Serialize writes per Intel OSWG */
	do {
		FUNC4(FUNC7() + (1ULL<<32));
	} while (FUNC3() == 0);
	FUNC4(0);

	FUNC6();
	FUNC0("lapic_config_tsc_deadline_timer() done\n");
}