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

/* Variables and functions */
 int CR4_MCE ; 
 int /*<<< orphan*/  IA32_MCG_CTL ; 
 unsigned long long IA32_MCG_CTL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ TRUE ; 
 int FUNC2 () ; 
 scalar_t__ mca_MCA_present ; 
 scalar_t__ mca_MCE_present ; 
 scalar_t__ mca_control_MSR_present ; 
 unsigned int mca_error_bank_count ; 
 int mca_family ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ mca_initialized ; 
 int /*<<< orphan*/  mca_lock ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long long) ; 

void
FUNC7(void)
{
	unsigned int	i;

	/*
	 * The first (boot) processor is responsible for discovering the
	 * machine check architecture present on this machine.
	 */
	if (!mca_initialized) {
		FUNC3();
		mca_initialized = TRUE;
		FUNC5(&mca_lock, 0);
	}

	if (mca_MCA_present) {

		/* Enable all MCA features */
		if (mca_control_MSR_present)
			FUNC6(IA32_MCG_CTL, IA32_MCG_CTL_ENABLE);
	
		switch (mca_family) {
		case 0x06:
			/* Enable all but mc0 */
			for (i = 1; i < mca_error_bank_count; i++)
				FUNC6(FUNC0(i),0xFFFFFFFFFFFFFFFFULL); 
			
			/* Clear all errors */
			for (i = 0; i < mca_error_bank_count; i++)
				FUNC6(FUNC1(i), 0ULL);
			break;
		case 0x0F:
			/* Enable all banks */
			for (i = 0; i < mca_error_bank_count; i++)
				FUNC6(FUNC0(i),0xFFFFFFFFFFFFFFFFULL); 
			
			/* Clear all errors */
			for (i = 0; i < mca_error_bank_count; i++)
				FUNC6(FUNC1(i), 0ULL);
			break;
		}
	}

	/* Enable machine check exception handling if available */
	if (mca_MCE_present) {
		FUNC4(FUNC2()|CR4_MCE);
	}
}