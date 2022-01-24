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
typedef  int kpc_config_t ;

/* Variables and functions */
 int CFGWORD_EL0A32EN_MASK ; 
 int CFGWORD_EL0A64EN_MASK ; 
 int CFGWORD_EL1EN_MASK ; 
 int CFGWORD_EL3EN_MASK ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  SREG_PMCR1 ; 
 int /*<<< orphan*/  SREG_PMESR0 ; 
 int /*<<< orphan*/  SREG_PMESR1 ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC6(uint32_t counter)
{
	uint64_t pmesr;

	switch (counter) {
		case 2: /* FALLTHROUGH */
		case 3: /* FALLTHROUGH */
		case 4: /* FALLTHROUGH */
		case 5:
			pmesr = FUNC4(FUNC5(SREG_PMESR0), counter, 2);
			break;
		case 6: /* FALLTHROUGH */
		case 7:
#if (KPC_ARM64_CONFIGURABLE_COUNT > 6)
			/* FALLTHROUGH */
		case 8: /* FALLTHROUGH */
		case 9:
#endif
			pmesr = FUNC4(FUNC5(SREG_PMESR1), counter, 6);
			break;
		default:
			pmesr = 0;
			break;
	}

	kpc_config_t config = pmesr;

	uint64_t pmcr1 = FUNC5(SREG_PMCR1);

	if (pmcr1 & FUNC0(counter)) {
		config |= CFGWORD_EL0A32EN_MASK;
	}
	if (pmcr1 & FUNC1(counter)) {
		config |= CFGWORD_EL0A64EN_MASK;
	}
	if (pmcr1 & FUNC2(counter)) {
		config |= CFGWORD_EL1EN_MASK;
#if NO_MONITOR
		config |= CFGWORD_EL3EN_MASK;
#endif
	}
#if !NO_MONITOR
	if (pmcr1 & FUNC3(counter)) {
		config |= CFGWORD_EL3EN_MASK;
	}
#endif

	return config;
}