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

/* Variables and functions */
 scalar_t__ FALSE ; 
 int LAPIC_LVT_MASKED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int LAPIC_SVR_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LVT_ERROR ; 
 int /*<<< orphan*/  LVT_LINT0 ; 
 int /*<<< orphan*/  LVT_PERFCNT ; 
 int /*<<< orphan*/  LVT_TIMER ; 
 int /*<<< orphan*/  MSR_IA32_APIC_BASE ; 
 int MSR_IA32_APIC_BASE_ENABLE ; 
 int /*<<< orphan*/  SVR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ lapic_os_enabled ; 
 scalar_t__ master_cpu ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

void
FUNC8(void)
{
	uint32_t lo;
	uint32_t hi;
	uint32_t value;

	/* Shutdown if local APIC was enabled by OS */
	if (lapic_os_enabled == FALSE)
		return;

	FUNC4();

	/* ExtINT: masked */
	if (FUNC3() == master_cpu) {
		value = FUNC0(LVT_LINT0);
		value |= LAPIC_LVT_MASKED;
		FUNC1(LVT_LINT0, value);
	}

	/* Error: masked */
	FUNC1(LVT_ERROR, FUNC0(LVT_ERROR) | LAPIC_LVT_MASKED);

	/* Timer: masked */
	FUNC1(LVT_TIMER, FUNC0(LVT_TIMER) | LAPIC_LVT_MASKED);

	/* Perfmon: masked */
	FUNC1(LVT_PERFCNT, FUNC0(LVT_PERFCNT) | LAPIC_LVT_MASKED);

	/* APIC software disabled */
	FUNC1(SVR, FUNC0(SVR) & ~LAPIC_SVR_ENABLE);

	/* Bypass the APIC completely and update cpu features */
	FUNC6(MSR_IA32_APIC_BASE, lo, hi);
	lo &= ~MSR_IA32_APIC_BASE_ENABLE;
	FUNC7(MSR_IA32_APIC_BASE, lo, hi);
	FUNC2();

	FUNC5();
}