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
typedef  int uint32_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SREG_PMCR0 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 () ; 
 int** saved_PMCR ; 

__attribute__((used)) static boolean_t
FUNC5(uint32_t counter)
{
	uint64_t pmcr0;
	boolean_t enabled;
	int cpuid = FUNC4();

	if (counter < 2) {
		return true;
	}

	pmcr0 = FUNC2(SREG_PMCR0) | 0x3;
	enabled = (pmcr0 & FUNC1(counter)) != 0;

	if (enabled) {
		pmcr0 &= FUNC0(counter);
		FUNC3(SREG_PMCR0, pmcr0);
	}

	saved_PMCR[cpuid][0] = pmcr0;
	return enabled;
}