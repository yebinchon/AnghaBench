#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  void* vm_offset_t ;
typedef  TYPE_1__* vm_map_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_2__* thread_t ;
typedef  int mach_msg_type_number_t ;
typedef  void* mach_exception_data_type_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ fault_status_t ;
typedef  int /*<<< orphan*/  exception_type_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;
struct TYPE_7__ {int options; TYPE_1__* map; int /*<<< orphan*/  iotier_override; } ;
struct TYPE_6__ {int /*<<< orphan*/  pmap; } ;

/* Variables and functions */
 void* EXC_ARM_DA_ALIGN ; 
 int /*<<< orphan*/  EXC_BAD_ACCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FSC_SYNC_PARITY ; 
 scalar_t__ KERN_ABORTED ; 
 void* KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  THREAD_ABORTSAFE ; 
 int /*<<< orphan*/  THROTTLE_LEVEL_NONE ; 
 int TH_OPT_DTRACE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 int VM_PROT_EXECUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* FUNC3 () ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void**,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 TYPE_1__* kernel_map ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ pgtrace_enabled ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 scalar_t__ FUNC19 () ; 
 scalar_t__ FUNC20 (TYPE_1__*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21(arm_saved_state_t *state, uint32_t esr, vm_offset_t fault_addr,
				  fault_status_t fault_code, vm_prot_t fault_type, vm_offset_t recover)
{
	exception_type_t		exc = EXC_BAD_ACCESS;
	mach_exception_data_type_t	codes[2];
	mach_msg_type_number_t 		numcodes = 2;
	thread_t			thread = FUNC3();

	(void)esr;
	(void)state;

	if (FUNC10())
		FUNC13("Apparently on interrupt stack when taking user abort!\n", state);

	thread->iotier_override = THROTTLE_LEVEL_NONE; /* Reset IO tier override before handling abort from userspace */

	if (FUNC9(fault_code)) {
		kern_return_t   result = KERN_FAILURE;
		vm_map_t        map = thread->map;
		vm_offset_t     vm_fault_addr = fault_addr;

		FUNC2(map != kernel_map);

		if (!(fault_type & VM_PROT_EXECUTE) && FUNC19())
				vm_fault_addr = FUNC16(fault_addr);

#if CONFIG_DTRACE
		if (thread->options & TH_OPT_DTRACE) {	/* Executing under dtrace_probe? */
			if (dtrace_tally_fault(vm_fault_addr)) { /* Should a user mode fault under dtrace be ignored? */
				if (recover) {
					set_saved_state_pc(state, recover);
				} else {
					boolean_t intr = ml_set_interrupts_enabled(FALSE);
					panic_with_thread_kernel_state("copyin/out has no recovery point", state);
					(void) ml_set_interrupts_enabled(intr);
				}
				return;
			} else {
				boolean_t intr = ml_set_interrupts_enabled(FALSE);
				panic_with_thread_kernel_state("Unexpected UMW page fault under dtrace_probe", state);
				(void) ml_set_interrupts_enabled(intr);
				return;
			}
		}
#else
		(void)recover;
#endif

#if CONFIG_PGTRACE
		if (pgtrace_enabled) {
			/* Check to see if trace bit is set */
			result = pmap_pgtrace_fault(map->pmap, fault_addr, state);
			if (result == KERN_SUCCESS) return;
		}
#endif

		/* check to see if it is just a pmap ref/modify fault */

		if ((result != KERN_SUCCESS) && !FUNC8(fault_code)) {
			result = FUNC1(map->pmap, FUNC18(vm_fault_addr), fault_type, TRUE);
		}
		if (result != KERN_SUCCESS) {

			{
				/* We have to fault the page in */
				result = FUNC20(map, vm_fault_addr, fault_type,
				                  /* change_wiring */ FALSE, VM_KERN_MEMORY_NONE, THREAD_ABORTSAFE,
				                  /* caller_pmap */ NULL, /* caller_pmap_addr */ 0);
			}
		}
		if (result == KERN_SUCCESS || result == KERN_ABORTED) {
			FUNC17();
			/* NOTREACHED */
		}

		codes[0] = result;
	} else if (FUNC6(fault_code)) {
		codes[0] = EXC_ARM_DA_ALIGN;
	} else if (FUNC7(fault_code)) {
#if defined(APPLE_ARM64_ARCH_FAMILY)
		if (fault_code == FSC_SYNC_PARITY) {
			arm64_platform_error(state, esr, fault_addr);
			thread_exception_return();
			/* NOTREACHED */
		}
#else
		FUNC12("User parity error.");
#endif
	} else {
		codes[0] = KERN_FAILURE;
	}

	codes[1] = fault_addr;
	FUNC5(exc, codes, numcodes);
	FUNC2(0); /* NOTREACHED */
}