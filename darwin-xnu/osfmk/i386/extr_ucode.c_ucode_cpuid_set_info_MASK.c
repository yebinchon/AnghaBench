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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 scalar_t__ AVX ; 
 scalar_t__ AVX512 ; 
 int AVX512_XMASK ; 
 int AVX_XMASK ; 
 int CR4_OSXSAVE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  XCR0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ fpu_capability ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void
FUNC6(void)
{
	uint64_t saved_xcr0, dest_xcr0;
	int need_xcr0_restore = 0;
	boolean_t intrs_enabled = FUNC3(FALSE);

	/*
	 * Before we cache the CPUID information, we must configure XCR0 with the maximal set of
	 * features to ensure the save area returned in the xsave leaf is correctly-sized.
	 *
	 * Since we are guaranteed that init_fpu() has already happened, we can use state
	 * variables set there that were already predicated on the presence of explicit
	 * boot-args enables/disables.
	 */

	if (fpu_capability == AVX512 || fpu_capability == AVX) {
		saved_xcr0 = FUNC4(XCR0);
		dest_xcr0 = (fpu_capability == AVX512) ? AVX512_XMASK : AVX_XMASK;
		FUNC0((FUNC2() & CR4_OSXSAVE) != 0);
		if (saved_xcr0 != dest_xcr0) {
			need_xcr0_restore = 1;
			FUNC5(dest_xcr0 >> 32, dest_xcr0 & 0xFFFFFFFFUL);
		}
	}

	FUNC1();

	if (need_xcr0_restore) {
		FUNC5(saved_xcr0 >> 32, saved_xcr0 & 0xFFFFFFFFUL);
	}

	FUNC3(intrs_enabled);
}