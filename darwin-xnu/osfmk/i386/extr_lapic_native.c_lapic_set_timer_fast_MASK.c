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
typedef  int lapic_timer_count_t ;

/* Variables and functions */
 int LAPIC_LVT_MASKED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LVT_TIMER ; 
 int /*<<< orphan*/  TIMER_INITIAL_COUNT ; 

void
FUNC2(
	lapic_timer_count_t	initial_count)
{
	FUNC1(LVT_TIMER, FUNC0(LVT_TIMER) & ~LAPIC_LVT_MASKED);
	FUNC1(TIMER_INITIAL_COUNT, initial_count);
}