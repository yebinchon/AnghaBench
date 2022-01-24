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
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  INTERPROCESSOR ; 
 int LAPIC_ICR_DM_NMI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ NMIPIs_enabled ; 
 int /*<<< orphan*/ * cpu_to_lapic ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

void
FUNC4(int cpu)
{
	boolean_t state = FUNC3(FALSE);

	if (NMIPIs_enabled == FALSE) {
		FUNC2(cpu);
	} else {
	/* Program the interrupt command register */
	/* The vector is ignored in this case--the target CPU will enter on the
	 * NMI vector.
	 */
	FUNC1(cpu_to_lapic[cpu],
			FUNC0(INTERPROCESSOR)|LAPIC_ICR_DM_NMI);
	}
	(void) FUNC3(state);
}