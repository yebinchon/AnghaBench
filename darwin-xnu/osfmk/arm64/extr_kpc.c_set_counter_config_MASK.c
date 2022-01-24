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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  SREG_PMESR0 ; 
 int /*<<< orphan*/  SREG_PMESR1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/ ** saved_PMESR ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(uint32_t counter, uint64_t config)
{
	int cpuid = FUNC4();
	uint64_t pmesr = 0;

	switch (counter) {
		case 2: /* FALLTHROUGH */
		case 3: /* FALLTHROUGH */
		case 4: /* FALLTHROUGH */
		case 5:
			pmesr = FUNC2(SREG_PMESR0);
			pmesr &= FUNC0(counter, 2);
			pmesr |= FUNC1(config, counter, 2);
			FUNC3(SREG_PMESR0, pmesr);
			saved_PMESR[cpuid][0] = pmesr;
			break;

		case 6: /* FALLTHROUGH */
		case 7:
#if KPC_ARM64_CONFIGURABLE_COUNT > 6
			/* FALLTHROUGH */
		case 8: /* FALLTHROUGH */
		case 9:
#endif
			pmesr = FUNC2(SREG_PMESR1);
			pmesr &= FUNC0(counter, 6);
			pmesr |= FUNC1(config, counter, 6);
			FUNC3(SREG_PMESR1, pmesr);
			saved_PMESR[cpuid][1] = pmesr;
			break;
		default:
			break;
	}

	FUNC5(counter, config);
}