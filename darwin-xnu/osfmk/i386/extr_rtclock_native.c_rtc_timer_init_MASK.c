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
typedef  int /*<<< orphan*/  i386_intr_func_t ;
typedef  int /*<<< orphan*/  TSC_deadline_timer ;

/* Variables and functions */
 int CPUID_FEATURE_TSCTMR ; 
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  FUNC0 (char*,int*,int) ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  busFCvtt2n ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  rtc_decrementer_max ; 
 int rtc_decrementer_min ; 
 int /*<<< orphan*/ * rtc_timer ; 
 int /*<<< orphan*/  rtc_timer_tsc_deadline ; 
 scalar_t__ rtclock_intr ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

void
FUNC6(void)
{
	int	TSC_deadline_timer = 0;

	/* See whether we can use the local apic in TSC-deadline mode */
	if ((FUNC1() & CPUID_FEATURE_TSCTMR)) {
		TSC_deadline_timer = 1;
		FUNC0("TSC_deadline_timer", &TSC_deadline_timer,
				   sizeof(TSC_deadline_timer));
		FUNC4("TSC Deadline Timer supported %s enabled\n",
			TSC_deadline_timer ? "and" : "but not");
	}

	if (TSC_deadline_timer) {
		rtc_timer = &rtc_timer_tsc_deadline;
		rtc_decrementer_max = UINT64_MAX;	/* effectively none */
		/*
		 * The min could be as low as 1nsec,
		 * but we're being conservative for now and making it the same
		 * as for the local apic timer.
		 */
		rtc_decrementer_min = 1*NSEC_PER_USEC;	/* 1 usec */
	} else {
		/*
		 * Compute the longest interval using LAPIC timer.
		 */
		rtc_decrementer_max = FUNC5(0x7fffffffULL, busFCvtt2n);
		FUNC2("maxDec: %lld\n", rtc_decrementer_max);
		rtc_decrementer_min = 1*NSEC_PER_USEC;	/* 1 usec */
	}

	/* Point LAPIC interrupts to hardclock() */
	FUNC3((i386_intr_func_t) rtclock_intr);
}