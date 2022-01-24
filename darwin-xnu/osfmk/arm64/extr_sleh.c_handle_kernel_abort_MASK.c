#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_1__* vm_map_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_2__* thread_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ fault_status_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;
struct TYPE_8__ {int options; TYPE_1__* map; } ;
struct TYPE_7__ {int /*<<< orphan*/  pmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FSC_SYNC_PARITY ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_PROTECTION_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 int PSR64_PAN ; 
 int THREAD_ABORTSAFE ; 
 TYPE_2__* THREAD_NULL ; 
 int THREAD_UNINT ; 
 int TH_OPT_DTRACE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ gVirtBase ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 TYPE_1__* kernel_map ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int pan_exception_level ; 
 char pan_fault_value ; 
 scalar_t__ pan_ro_addr ; 
 scalar_t__ pan_test_addr ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ pgtrace_enabled ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ static_memory_end ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC22(arm_saved_state_t *state, uint32_t esr, vm_offset_t fault_addr,
					fault_status_t fault_code, vm_prot_t fault_type, vm_offset_t recover)
{
	thread_t		thread = FUNC3();
	(void)esr;

#if CONFIG_DTRACE
	if (is_vm_fault(fault_code) && thread->options & TH_OPT_DTRACE) {	/* Executing under dtrace_probe? */
		if (dtrace_tally_fault(fault_addr)) { /* Should a fault under dtrace be ignored? */
			/*
			 * Point to next instruction, or recovery handler if set.
			 */
			if (recover) {
				set_saved_state_pc(state, recover);
			} else {
				set_saved_state_pc(state, get_saved_state_pc(state) + 4);
			}
			return;
		} else {
			boolean_t intr = ml_set_interrupts_enabled(FALSE);
			panic_with_thread_kernel_state("Unexpected page fault under dtrace_probe", state);
			(void) ml_set_interrupts_enabled(intr);
			return;
		}
	}
#endif

#if !CONFIG_PGTRACE /* This will be moved next to pgtrace fault evaluation */
	if (FUNC14())
		FUNC16("Unexpected abort while on interrupt stack.", state);
#endif

	if (FUNC12(fault_code)) {
		kern_return_t   result = KERN_FAILURE;
		vm_map_t        map;
		int             interruptible;

		/*
		 * Ensure no faults in the physical aperture. This could happen if
		 * a page table is incorrectly allocated from the read only region
		 * when running with KTRR.
		 */


#if __ARM_PAN_AVAILABLE__ && defined(CONFIG_XNUPOST)
		if (is_permission_fault(fault_code) && !(get_saved_state_cpsr(state) & PSR64_PAN) &&
		    (pan_ro_addr != 0) && (fault_addr == pan_ro_addr)) {
			++pan_exception_level;
			// On an exception taken from a PAN-disabled context, verify
			// that PAN is re-enabled for the exception handler and that
			// accessing the test address produces a PAN fault.
			pan_fault_value = *(char *)pan_test_addr;
			set_saved_state_pc(state, get_saved_state_pc(state) + 4);
			return;
		}
#endif

		if (fault_addr >= gVirtBase && fault_addr < static_memory_end) {
			FUNC16("Unexpected fault in kernel static region\n",state);
		}

		if (FUNC0(fault_addr) || thread == THREAD_NULL) {
			map = kernel_map;
			interruptible = THREAD_UNINT;
		} else {
			map = thread->map;
			interruptible = THREAD_ABORTSAFE;
		}

#if CONFIG_PGTRACE
		if (pgtrace_enabled) {
			/* Check to see if trace bit is set */
			result = pmap_pgtrace_fault(map->pmap, fault_addr, state);
			if (result == KERN_SUCCESS) return;
		}

		if (ml_at_interrupt_context())
			panic_with_thread_kernel_state("Unexpected abort while on interrupt stack.", state);
#endif

		/* check to see if it is just a pmap ref/modify fault */
		if (!FUNC11(fault_code)) {
			result = FUNC2(map->pmap, FUNC20(fault_addr), fault_type, FALSE);
			if (result == KERN_SUCCESS) return;
		}

		if (result != KERN_PROTECTION_FAILURE)
		{
			/*
			 *  We have to "fault" the page in.
			 */
			result = FUNC21(map, fault_addr, fault_type,
			                  /* change_wiring */ FALSE, VM_KERN_MEMORY_NONE, interruptible,
			                  /* caller_pmap */ NULL, /* caller_pmap_addr */ 0);
		}

		if (result == KERN_SUCCESS) return;

		/*
		 *  If we have a recover handler, invoke it now.
		 */
		if (recover) {
			FUNC19(state, recover);
			return;
		}

#if __ARM_PAN_AVAILABLE__
		if (is_pan_fault(state, esr, fault_addr, fault_code)) {
#ifdef CONFIG_XNUPOST
			if ((pan_test_addr != 0) && (fault_addr == pan_test_addr))
			{
				++pan_exception_level;
				// read the user-accessible value to make sure
				// pan is enabled and produces a 2nd fault from
				// the exception handler
				if (pan_exception_level == 1)
					pan_fault_value = *(char *)pan_test_addr;	
				// this fault address is used for PAN test
				// disable PAN and rerun
				set_saved_state_cpsr(state,
					get_saved_state_cpsr(state) & (~PSR64_PAN));
				return;
			}
#endif
			panic_with_thread_kernel_state("Privileged access never abort.", state);
		}
#endif

#if CONFIG_PGTRACE
	} else if (ml_at_interrupt_context()) {
		panic_with_thread_kernel_state("Unexpected abort while on interrupt stack.", state);
#endif
	} else if (FUNC7(fault_code)) {
		FUNC16("Unaligned kernel data abort.", state);
	} else if (FUNC9(fault_code)) {
#if defined(APPLE_ARM64_ARCH_FAMILY)
		if (fault_code == FSC_SYNC_PARITY) {
			arm64_platform_error(state, esr, fault_addr);
			return;
		}
#else
		FUNC16("Kernel parity error.", state);
#endif
	} else {
		FUNC13("Unclassified kernel abort (fault_code=0x%x)\n", fault_code);
	}

	FUNC16("Kernel data abort.", state);
}