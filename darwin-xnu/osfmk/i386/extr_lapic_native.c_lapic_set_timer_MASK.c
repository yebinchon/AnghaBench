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
typedef  scalar_t__ lapic_timer_mode_t ;
typedef  int lapic_timer_divide_t ;
typedef  int lapic_timer_count_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int LAPIC_LVT_MASKED ; 
 int LAPIC_LVT_PERIODIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LVT_TIMER ; 
 int /*<<< orphan*/  TIMER_DIVIDE_CONFIG ; 
 int /*<<< orphan*/  TIMER_INITIAL_COUNT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ periodic ; 

void
FUNC4(
	boolean_t		interrupt_unmasked,
	lapic_timer_mode_t	mode,
	lapic_timer_divide_t	divisor,
	lapic_timer_count_t	initial_count)
{
	uint32_t	timer_vector;

	FUNC2();
	timer_vector = FUNC0(LVT_TIMER);
	timer_vector &= ~(LAPIC_LVT_MASKED|LAPIC_LVT_PERIODIC);;
	timer_vector |= interrupt_unmasked ? 0 : LAPIC_LVT_MASKED;
	timer_vector |= (mode == periodic) ? LAPIC_LVT_PERIODIC : 0;
	FUNC1(LVT_TIMER, timer_vector);
	FUNC1(TIMER_DIVIDE_CONFIG, divisor);
	FUNC1(TIMER_INITIAL_COUNT, initial_count);
	FUNC3();
}