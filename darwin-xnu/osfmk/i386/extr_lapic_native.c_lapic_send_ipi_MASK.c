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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int LAPIC_ICR_DM_FIXED ; 
 int LAPIC_ICR_DS_PENDING ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * cpu_to_lapic ; 
 int lapic_interrupt_base ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(int cpu, int vector)
{
	boolean_t	state;

	if (vector < lapic_interrupt_base)
		vector += lapic_interrupt_base;

	state = FUNC3(FALSE);

	/* Wait for pending outgoing send to complete */
	while (FUNC0() & LAPIC_ICR_DS_PENDING) {
		FUNC2();
	}

	FUNC1(cpu_to_lapic[cpu], vector | LAPIC_ICR_DM_FIXED);

	(void) FUNC3(state);
}