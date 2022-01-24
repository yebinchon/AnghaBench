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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  CRITICAL_BLACKLIST_COUNT ; 
 int FALSE ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  PROBE_CTX_CLOSURE_COUNT ; 
 int TRUE ; 
 int /*<<< orphan*/  _cmp ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  critical_blacklist ; 
 scalar_t__ ignore_fbt_blacklist ; 
 int /*<<< orphan*/  probe_ctx_closure ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 

int
FUNC4(const char* name)
{
	/*
	 * If the user set this, trust they know what they are doing.
	 */
	if (ignore_fbt_blacklist)
		return FALSE;

	if (FUNC1(name, "dtrace_") && !FUNC1(name, "dtrace_safe_")) {
		/*
		 * Anything beginning with "dtrace_" may be called
		 * from probe context unless it explitly indicates
		 * that it won't be called from probe context by
		 * using the prefix "dtrace_safe_".
		 */
		return TRUE;
	}

	/*
	* Place no probes on critical routines (5221096)
	*/
	if (FUNC2( name, critical_blacklist, CRITICAL_BLACKLIST_COUNT, sizeof(name), _cmp ) != NULL)
		return TRUE;

	/*
	* Place no probes that could be hit in probe context.
	*/
	if (FUNC2( name, probe_ctx_closure, PROBE_CTX_CLOSURE_COUNT, sizeof(name), _cmp ) != NULL) {
		return TRUE;
	}

	/*
	* Place no probes that could be hit in probe context.
	* In the interests of safety, some of these may be overly cautious.
	* Also exclude very low-level "firmware" class calls.
	*/
	if (FUNC1(name, "cpu_") ||	/* Coarse */
		FUNC1(name, "platform_") ||	/* Coarse */
		FUNC1(name, "machine_") ||	/* Coarse */
		FUNC1(name, "ml_") ||	/* Coarse */
		FUNC1(name, "PE_") ||	/* Coarse */
		FUNC1(name, "rtc_") ||	/* Coarse */
		FUNC1(name, "_rtc_") ||
		FUNC1(name, "rtclock_") ||
		FUNC1(name, "clock_") ||
		FUNC1(name, "bcopy") ||
		FUNC1(name, "pmap_") ||
		FUNC1(name, "hw_") ||	/* Coarse */
		FUNC1(name, "lapic_") ||	/* Coarse */
		FUNC1(name, "OSAdd") ||
		FUNC1(name, "OSBit") ||
		FUNC1(name, "OSDecrement") ||
		FUNC1(name, "OSIncrement") ||
		FUNC1(name, "OSCompareAndSwap") ||
		FUNC1(name, "etimer_") ||
		FUNC1(name, "dtxnu_kern_") ||
		FUNC1(name, "flush_mmu_tlb_"))
		return TRUE;
	/*
	 * Fasttrap inner-workings we can't instrument
	 * on Intel (6230149)
	*/
	if (FUNC1(name, "fasttrap_") ||
		FUNC1(name, "fuword") ||
		FUNC1(name, "suword"))
		return TRUE;

	if (FUNC1(name, "_dtrace"))
		return TRUE; /* Shims in dtrace.c */

	if (FUNC1(name, "hibernate_"))
		return TRUE;

	/*
	 * Place no probes in the exception handling path
	 */
#if __arm__ || __arm64__
	if (LIT_STRNSTART(name, "fleh_") ||
		LIT_STRNSTART(name, "sleh_") ||
		LIT_STRNSTART(name, "timer_state_event") ||
		LIT_STRNEQL(name, "get_vfp_enabled"))
		return TRUE;

	if (LIT_STRNSTART(name, "_ZNK15OSMetaClassBase8metaCastEPK11OSMetaClass") ||
		LIT_STRNSTART(name, "_ZN15OSMetaClassBase12safeMetaCastEPKS_PK11OSMetaClass") ||
		LIT_STRNSTART(name, "_ZNK11OSMetaClass13checkMetaCastEPK15OSMetaClassBase"))
		return TRUE;
#endif

#ifdef __x86_64__
	if (FUNC1(name, "machine_") ||
		FUNC1(name, "idt64") ||
		FUNC1(name, "ks_") ||
		FUNC1(name, "hndl_") ||
		FUNC1(name, "_intr_") ||
		FUNC1(name, "mapping_") ||
		FUNC1(name, "tsc_") ||
		FUNC1(name, "pmCPU") ||
		FUNC1(name, "pms") ||
		FUNC1(name, "usimple_") ||
		FUNC1(name, "lck_spin_lock") ||
		FUNC1(name, "lck_spin_unlock") ||
		FUNC1(name, "absolutetime_to_") ||
		FUNC1(name, "commpage_") ||
		FUNC1(name, "ml_") ||
		FUNC1(name, "PE_") ||
		FUNC1(name, "act_machine") ||
		FUNC1(name, "acpi_")  ||
		FUNC1(name, "pal_")) {
		return TRUE;
	}
	// Don't Steal Mac OS X
	if (FUNC1(name, "dsmos_"))
		return TRUE;

#endif

	/*
	* Place no probes that could be hit on the way to the debugger.
	*/
	if (FUNC1(name, "kdp_") ||
		FUNC1(name, "kdb_") ||
		FUNC1(name, "debug_")) {
		return TRUE;
	}

#if KASAN
	if (LIT_STRNSTART(name, "kasan") ||
		LIT_STRNSTART(name, "__kasan") ||
		LIT_STRNSTART(name, "__asan")) {
		return TRUE;
	}
#endif

	/*
	 * Place no probes that could be hit on the way to a panic.
	 */
	if (NULL != FUNC3(name, "panic_"))
		return TRUE;

	return FALSE;
}