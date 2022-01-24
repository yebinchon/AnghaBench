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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int CPUID_FEATURE_APIC ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LAPIC_REDUCED_INTERRUPT_BASE ; 
 int LAPIC_START ; 
 int /*<<< orphan*/  MSR_IA32_APIC_BASE ; 
 int MSR_IA32_APIC_BASE_BASE ; 
 int MSR_IA32_APIC_BASE_ENABLE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  lapic_interrupt_base ; 
 int /*<<< orphan*/  lapic_os_enabled ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 

boolean_t
FUNC6(void)
{
	uint32_t	lo;
	uint32_t	hi;

	if (FUNC1() & CPUID_FEATURE_APIC)
		return TRUE;

	if (FUNC0() == 6 || FUNC0() == 15) {
		/*
		 * Mobile Pentiums:
		 * There may be a local APIC which wasn't enabled by BIOS.
		 * So we try to enable it explicitly.
		 */
		FUNC4(MSR_IA32_APIC_BASE, lo, hi);
		lo &= ~MSR_IA32_APIC_BASE_BASE;
		lo |= MSR_IA32_APIC_BASE_ENABLE | LAPIC_START;
		lo |= MSR_IA32_APIC_BASE_ENABLE;
		FUNC5(MSR_IA32_APIC_BASE, lo, hi);

		/*
		 * Re-initialize cpu features info and re-check.
		 */
		FUNC2();
		/* We expect this codepath will never be traversed
		 * due to EFI enabling the APIC. Reducing the APIC
		 * interrupt base dynamically is not supported.
		 */
		if (FUNC1() & CPUID_FEATURE_APIC) {
			FUNC3("Local APIC discovered and enabled\n");
			lapic_os_enabled = TRUE;
			lapic_interrupt_base = LAPIC_REDUCED_INTERRUPT_BASE;
			return TRUE;
		}
	}

	return FALSE;
}