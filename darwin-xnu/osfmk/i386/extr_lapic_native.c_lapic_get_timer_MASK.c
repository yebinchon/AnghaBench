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
typedef  int /*<<< orphan*/  lapic_timer_mode_t ;
typedef  int lapic_timer_divide_t ;
typedef  int lapic_timer_count_t ;

/* Variables and functions */
 int LAPIC_LVT_PERIODIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int LAPIC_TIMER_DIVIDE_MASK ; 
 int /*<<< orphan*/  LVT_TIMER ; 
 int /*<<< orphan*/  TIMER_CURRENT_COUNT ; 
 int /*<<< orphan*/  TIMER_DIVIDE_CONFIG ; 
 int /*<<< orphan*/  TIMER_INITIAL_COUNT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  one_shot ; 
 int /*<<< orphan*/  periodic ; 

void
FUNC3(
	lapic_timer_mode_t	*mode,
	lapic_timer_divide_t	*divisor,
	lapic_timer_count_t	*initial_count,
	lapic_timer_count_t	*current_count)
{
	FUNC1();
	if (mode)
		*mode = (FUNC0(LVT_TIMER) & LAPIC_LVT_PERIODIC) ?
				periodic : one_shot;
	if (divisor)
		*divisor = FUNC0(TIMER_DIVIDE_CONFIG) & LAPIC_TIMER_DIVIDE_MASK;
	if (initial_count)
		*initial_count = FUNC0(TIMER_INITIAL_COUNT);
	if (current_count)
		*current_count = FUNC0(TIMER_CURRENT_COUNT);
	FUNC2();
}