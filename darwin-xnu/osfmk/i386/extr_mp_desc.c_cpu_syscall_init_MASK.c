#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  cpu_data_t ;
struct TYPE_3__ {int cdi_sstku; } ;
struct TYPE_4__ {TYPE_1__ cpu_desc_index; } ;

/* Variables and functions */
 int FUNC0 (uintptr_t) ; 
 int EFL_DF ; 
 int EFL_IF ; 
 int EFL_NT ; 
 int EFL_TF ; 
 scalar_t__ KERNEL64_CS ; 
 int /*<<< orphan*/  MSR_IA32_EFER ; 
 int MSR_IA32_EFER_SCE ; 
 int /*<<< orphan*/  MSR_IA32_FMASK ; 
 int /*<<< orphan*/  MSR_IA32_LSTAR ; 
 int /*<<< orphan*/  MSR_IA32_STAR ; 
 int /*<<< orphan*/  MSR_IA32_SYSENTER_CS ; 
 int /*<<< orphan*/  MSR_IA32_SYSENTER_EIP ; 
 int /*<<< orphan*/  MSR_IA32_SYSENTER_ESP ; 
 int SYSENTER_CS ; 
 scalar_t__ USER_CS ; 
 TYPE_2__* FUNC1 () ; 
 scalar_t__ hi64_syscall ; 
 scalar_t__ hi64_sysenter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void
FUNC5(cpu_data_t *cdp)
{
#if MONOTONIC
	mt_cpu_up(cdp);
#else /* MONOTONIC */
#pragma unused(cdp)
#endif /* !MONOTONIC */
	FUNC4(MSR_IA32_SYSENTER_CS, SYSENTER_CS); 
	FUNC4(MSR_IA32_SYSENTER_EIP, FUNC0((uintptr_t) hi64_sysenter));
	FUNC4(MSR_IA32_SYSENTER_ESP, FUNC1()->cpu_desc_index.cdi_sstku);
	/* Enable syscall/sysret */
	FUNC4(MSR_IA32_EFER, FUNC3(MSR_IA32_EFER) | MSR_IA32_EFER_SCE);

	/*
	 * MSRs for 64-bit syscall/sysret
	 * Note USER_CS because sysret uses this + 16 when returning to
	 * 64-bit code.
	 */
	FUNC4(MSR_IA32_LSTAR, FUNC0((uintptr_t) hi64_syscall));
	FUNC4(MSR_IA32_STAR, (((uint64_t)USER_CS) << 48) | (((uint64_t)KERNEL64_CS) << 32));
	/*
	 * Emulate eflags cleared by sysenter but note that
	 * we also clear the trace trap to avoid the complications
	 * of single-stepping into a syscall. The nested task bit
	 * is also cleared to avoid a spurious "task switch"
	 * should we choose to return via an IRET.
	 */
	FUNC4(MSR_IA32_FMASK, EFL_DF|EFL_IF|EFL_TF|EFL_NT);

}