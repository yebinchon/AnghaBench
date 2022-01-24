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

/* Variables and functions */
 int CR4_VMXE ; 
 int MSR_IA32_FEATCTL_LOCK ; 
 int MSR_IA32_FEATCTL_VMXON ; 
 int /*<<< orphan*/  MSR_IA32_FEATURE_CONTROL ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(void)
{
	uint64_t msr_image;

	if (!FUNC3())
		return;

	/*
	 * We don't count on EFI initializing MSR_IA32_FEATURE_CONTROL
	 * and turning VMXON on and locking the bit, so we do that now.
	 */
	msr_image = FUNC1(MSR_IA32_FEATURE_CONTROL);
	if (0 == ((msr_image & MSR_IA32_FEATCTL_LOCK)))
		FUNC4(MSR_IA32_FEATURE_CONTROL,
			(msr_image |
			 MSR_IA32_FEATCTL_VMXON |
			 MSR_IA32_FEATCTL_LOCK));

	FUNC2(FUNC0() | CR4_VMXE);
}