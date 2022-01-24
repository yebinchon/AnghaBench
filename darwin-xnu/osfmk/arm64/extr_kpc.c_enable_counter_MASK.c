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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int PMCR0_INTGEN_AIC ; 
 int PMCR0_INTGEN_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SREG_PMCR0 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 () ; 
 int** saved_PMCR ; 

__attribute__((used)) static boolean_t
FUNC5(uint32_t counter)
{
	int cpuid = FUNC4();
	uint64_t pmcr0 = 0, intgen_type;
	boolean_t counter_running, pmi_enabled, intgen_correct, enabled;

	pmcr0 = FUNC2(SREG_PMCR0) | 0x3 /* leave the fixed counters enabled for monotonic */;

	counter_running = (pmcr0 & FUNC0(counter)) != 0;
	pmi_enabled = (pmcr0 & FUNC1(counter)) != 0;

	/* TODO this should use the PMI path rather than AIC for the interrupt
	 *      as it is faster
	 */
	intgen_type = PMCR0_INTGEN_AIC;
	intgen_correct = (pmcr0 & PMCR0_INTGEN_MASK) == intgen_type;

	enabled = counter_running && pmi_enabled && intgen_correct;

	if (!enabled) {
		pmcr0 |= FUNC0(counter);
		pmcr0 |= FUNC1(counter);
		pmcr0 &= ~PMCR0_INTGEN_MASK;
		pmcr0 |= intgen_type;

		FUNC3(SREG_PMCR0, pmcr0);
	}

	saved_PMCR[cpuid][0] = pmcr0;
	return enabled;
}