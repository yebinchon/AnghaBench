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
typedef  int kpc_config_t ;

/* Variables and functions */
 int CFGWORD_EL0A32EN_MASK ; 
 int CFGWORD_EL0A64EN_MASK ; 
 int CFGWORD_EL1EN_MASK ; 
 int CFGWORD_EL3EN_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SREG_PMCR1 ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 () ; 
 int** saved_PMCR ; 

__attribute__((used)) static void
FUNC9(uint32_t counter, kpc_config_t cfgword)
{
	uint64_t bits = 0;
	int cpuid = FUNC8();

	if (cfgword & CFGWORD_EL0A32EN_MASK) {
		bits |= FUNC0(counter);
	}
	if (cfgword & CFGWORD_EL0A64EN_MASK) {
		bits |= FUNC1(counter);
	}
	if (cfgword & CFGWORD_EL1EN_MASK) {
		bits |= FUNC2(counter);
	}
#if !NO_MONITOR
	if (cfgword & CFGWORD_EL3EN_MASK) {
		bits |= FUNC3(counter);
	}
#endif

	/*
	 * Backwards compatibility: Writing a non-zero configuration word with
	 * all zeros in bits 16-19 is interpreted as enabling in all modes.
	 * This matches the behavior when the PMCR1 bits weren't exposed.
	 */
	if (bits == 0 && cfgword != 0) {
		bits = FUNC5(counter);
	}

	uint64_t pmcr1 = FUNC6(SREG_PMCR1);
	pmcr1 &= FUNC4(counter);
	pmcr1 |= bits;
	pmcr1 |= 0x30303; /* monotonic compatibility */
	FUNC7(SREG_PMCR1, pmcr1);
	saved_PMCR[cpuid][1] = pmcr1;
}