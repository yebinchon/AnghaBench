#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86_saved_state_t ;
struct TYPE_22__ {int trapno; int err; int rflags; scalar_t__ rip; int /*<<< orphan*/  cpu; } ;
struct TYPE_23__ {TYPE_4__ isf; scalar_t__ cr2; } ;
typedef  TYPE_5__ x86_saved_state64_t ;
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_6__* vm_map_t ;
typedef  scalar_t__ user_addr_t ;
typedef  TYPE_7__* thread_t ;
struct recovery {scalar_t__ fault_addr; int /*<<< orphan*/  recover_addr; } ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_21__ {int specFlags; TYPE_1__* copy_window; } ;
struct TYPE_25__ {scalar_t__ map; int options; int /*<<< orphan*/  recover; TYPE_3__ machine; } ;
struct TYPE_24__ {TYPE_2__* pmap; } ;
struct TYPE_20__ {scalar_t__ pm_cr3; } ;
struct TYPE_19__ {scalar_t__ user_base; } ;
struct TYPE_18__ {scalar_t__ cpu_copywindow_base; scalar_t__ cpu_pmap_pcid_enabled; } ;

/* Variables and functions */
 int CopyIOActive ; 
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  DBG_MACH_EXCP_KTRAP_x86 ; 
 int EFL_AC ; 
 int EFL_IF ; 
 int EFL_TF ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned int,unsigned int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ NBPDE ; 
 scalar_t__ NCOPY_WINDOWS ; 
 int /*<<< orphan*/  NO_WATCHPOINTS ; 
 scalar_t__ PAGE_SIZE ; 
 TYPE_7__* THREAD_NULL ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int TH_OPT_DTRACE ; 
#define  T_DEBUG 136 
#define  T_FLOATING_POINT_ERROR 135 
#define  T_FPU_FAULT 134 
#define  T_GENERAL_PROTECTION 133 
#define  T_INT3 132 
#define  T_INVALID_OPCODE 131 
#define  T_NO_FPU 130 
#define  T_PAGE_FAULT 129 
 int T_PF_EXECUTE ; 
 int T_PF_PROT ; 
 int T_PF_WRITE ; 
 int T_PREEMPT ; 
#define  T_SSE_FLOAT_ERROR 128 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 scalar_t__ VM_MAX_USER_PAGE_ADDRESS ; 
 int /*<<< orphan*/  VM_PROT_EXECUTE ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  VM_PROT_WRITE ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_14__* FUNC8 () ; 
 TYPE_7__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 () ; 
 int FUNC17 () ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int,TYPE_5__*,scalar_t__,scalar_t__) ; 
 scalar_t__ kernel_map ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 scalar_t__ no_shared_cr3 ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_5__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 scalar_t__ pmap_smap_enabled ; 
 scalar_t__ pmap_smep_enabled ; 
 struct recovery* recover_table ; 
 struct recovery* recover_table_end ; 
 int /*<<< orphan*/  FUNC26 () ; 
 TYPE_5__* FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (int,int /*<<< orphan*/ *,uintptr_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC33(
	x86_saved_state_t	*state,
	uintptr_t *lo_spp)
{
	x86_saved_state64_t	*saved_state;
	int			code;
	user_addr_t		vaddr;
	int			type;
	vm_map_t		map = 0;	/* protected by T_PAGE_FAULT */
	kern_return_t		result = KERN_FAILURE;
	kern_return_t		fault_result = KERN_SUCCESS;
	thread_t		thread;
	boolean_t               intr;
	vm_prot_t		prot;
        struct recovery		*rp;
	vm_offset_t		kern_ip;
#if NCOPY_WINDOWS > 0
	int			fault_in_copy_window = -1;
#endif
	int			is_user;
	int			trap_pl = FUNC17();

	thread = FUNC9();

	if (FUNC3(FUNC18(state)))
		FUNC23("kernel_trap(%p) with 32-bit state", state);
	saved_state = FUNC27(state);

	/* Record cpu where state was captured */
	saved_state->isf.cpu = FUNC7();

	vaddr = (user_addr_t)saved_state->cr2;
	type  = saved_state->isf.trapno;
	code  = (int)(saved_state->isf.err & 0xffff);
	intr  = (saved_state->isf.rflags & EFL_IF) != 0;	/* state of ints at trap */
	kern_ip = (vm_offset_t)saved_state->isf.rip;

	is_user = (vaddr < VM_MAX_USER_PAGE_ADDRESS);

#if CONFIG_DTRACE
	/*
	 * Is there a DTrace hook?
	 */	
	if (__improbable(tempDTraceTrapHook != NULL)) {
		if (tempDTraceTrapHook(type, state, lo_spp, 0) == KERN_SUCCESS) {
			/*
			 * If it succeeds, we are done...
			 */
			return;
		}
	}
#endif /* CONFIG_DTRACE */

	/*
	 * we come here with interrupts off as we don't want to recurse
	 * on preemption below.  but we do want to re-enable interrupts
	 * as soon we possibly can to hold latency down
	 */
	if (FUNC3(T_PREEMPT == type)) {
		FUNC5();

		FUNC0(KDEBUG_TRACE, 
			(FUNC1(DBG_MACH_EXCP_KTRAP_x86, type)) | DBG_FUNC_NONE,
			0, 0, 0, FUNC2(kern_ip), 0);
		return;
	}

	user_addr_t	kd_vaddr = is_user ? vaddr : FUNC2(vaddr);
	FUNC0(KDEBUG_TRACE,
		(FUNC1(DBG_MACH_EXCP_KTRAP_x86, type)) | DBG_FUNC_NONE,
		(unsigned)(kd_vaddr >> 32), (unsigned)kd_vaddr, is_user,
		FUNC2(kern_ip), 0);


	if (T_PAGE_FAULT == type) {
		/*
		 * assume we're faulting in the kernel map
		 */
		map = kernel_map;

		if (FUNC4(thread != THREAD_NULL && thread->map != kernel_map)) {
#if NCOPY_WINDOWS > 0
			vm_offset_t	copy_window_base;
			vm_offset_t	kvaddr;
			int		window_index;

			kvaddr = (vm_offset_t)vaddr;
			/*
			 * must determine if fault occurred in
			 * the copy window while pre-emption is
			 * disabled for this processor so that
			 * we only need to look at the window
			 * associated with this processor
			 */
			copy_window_base = current_cpu_datap()->cpu_copywindow_base;

			if (kvaddr >= copy_window_base && kvaddr < (copy_window_base + (NBPDE * NCOPY_WINDOWS)) ) {

				window_index = (int)((kvaddr - copy_window_base) / NBPDE);

				if (thread->machine.copy_window[window_index].user_base != (user_addr_t)-1) {

				        kvaddr -= (copy_window_base + (NBPDE * window_index));
				        vaddr = thread->machine.copy_window[window_index].user_base + kvaddr;

					map = thread->map;
					fault_in_copy_window = window_index;
				}
			}
#else
			if (FUNC4(vaddr < VM_MAX_USER_PAGE_ADDRESS)) {
				/* fault occurred in userspace */
				map = thread->map;

				/* Intercept a potential Supervisor Mode Execute
				 * Protection fault. These criteria identify
				 * both NX faults and SMEP faults, but both
				 * are fatal. We avoid checking PTEs (racy).
				 * (The VM could just redrive a SMEP fault, hence
				 * the intercept).
				 */
				if (FUNC3((code == (T_PF_PROT | T_PF_EXECUTE)) &&
					(pmap_smep_enabled) && (saved_state->isf.rip == vaddr))) {
					goto debugger_entry;
				}

				/*
				 * Additionally check for SMAP faults...
				 * which are characterized by page-present and
				 * the AC bit unset (i.e. not from copyin/out path).
				 */
				if (FUNC3(code & T_PF_PROT &&
						 pmap_smap_enabled &&
						 (saved_state->isf.rflags & EFL_AC) == 0)) {
					goto debugger_entry;
				}

				/*
				 * If we're not sharing cr3 with the user
				 * and we faulted in copyio,
				 * then switch cr3 here and dismiss the fault.
				 */
				if (no_shared_cr3 &&
				    (thread->machine.specFlags&CopyIOActive) &&
				    map->pmap->pm_cr3 != FUNC16()) {
					FUNC25(FUNC8()->cpu_pmap_pcid_enabled == FALSE);
					FUNC28(map->pmap->pm_cr3);
					return;
				}
				if (FUNC3(vaddr < PAGE_SIZE) &&
				    ((thread->machine.specFlags & CopyIOActive) == 0)) {
					goto debugger_entry;
				}
			}
#endif
		}
	}

	(void) FUNC21(intr);

	switch (type) {

	    case T_NO_FPU:
		FUNC15();
		return;

	    case T_FPU_FAULT:
		FUNC14();
		return;

	    case T_FLOATING_POINT_ERROR:
		FUNC13();
		return;

	    case T_SSE_FLOAT_ERROR:
		FUNC11();
		return;

	    case T_INVALID_OPCODE:
		FUNC12(kern_ip);
		goto debugger_entry;

	    case T_DEBUG:
		    if ((saved_state->isf.rflags & EFL_TF) == 0 && NO_WATCHPOINTS)
		    {
			    /* We've somehow encountered a debug
			     * register match that does not belong
			     * to the kernel debugger.
			     * This isn't supposed to happen.
			     */
			    FUNC26();
			    return;
		    }
		    goto debugger_entry;
	    case T_INT3:
	      goto debugger_entry;
	    case T_PAGE_FAULT:

#if CONFIG_DTRACE
		if (thread != THREAD_NULL && thread->options & TH_OPT_DTRACE) {	/* Executing under dtrace_probe? */
			if (dtrace_tally_fault(vaddr)) { /* Should a fault under dtrace be ignored? */
				/*
				 * DTrace has "anticipated" the possibility of this fault, and has
				 * established the suitable recovery state. Drop down now into the
				 * recovery handling code in "case T_GENERAL_PROTECTION:". 
				 */
				goto FALL_THROUGH;
			}
		}
#endif /* CONFIG_DTRACE */
		
		prot = VM_PROT_READ;

		if (code & T_PF_WRITE)
		        prot |= VM_PROT_WRITE;
		if (code & T_PF_EXECUTE)
		        prot |= VM_PROT_EXECUTE;

		fault_result = result = FUNC32(map,
				  vaddr,
				  prot,
				  FALSE, VM_KERN_MEMORY_NONE,
				  THREAD_UNINT, NULL, 0);

		if (result == KERN_SUCCESS) {
#if NCOPY_WINDOWS > 0
			if (fault_in_copy_window != -1) {
				ml_set_interrupts_enabled(FALSE);
				copy_window_fault(thread, map,
						  fault_in_copy_window);
				(void) ml_set_interrupts_enabled(intr);
			}
#endif /* NCOPY_WINDOWS > 0 */
			return;
		}
		/*
		 * fall through
		 */
#if CONFIG_DTRACE
FALL_THROUGH:
#endif /* CONFIG_DTRACE */

	    case T_GENERAL_PROTECTION:
		/*
		 * If there is a failure recovery address
		 * for this fault, go there.
		 */
	        for (rp = recover_table; rp < recover_table_end; rp++) {
		        if (kern_ip == rp->fault_addr) {
			        FUNC29(saved_state, rp->recover_addr);
				return;
			}
		}

		/*
		 * Check thread recovery address also.
		 */
		if (thread != THREAD_NULL && thread->recover) {
			FUNC29(saved_state, thread->recover);
			thread->recover = 0;
			return;
		}
		/*
		 * Unanticipated page-fault errors in kernel
		 * should not happen.
		 *
		 * fall through...
		 */
	    default:
		/*
		 * Exception 15 is reserved but some chips may generate it
		 * spuriously. Seen at startup on AMD Athlon-64.
		 */
	    	if (type == 15) {
			FUNC20("kernel_trap() ignoring spurious trap 15\n"); 
			return;
		}
debugger_entry:
		/* Ensure that the i386_kernel_state at the base of the
		 * current thread's stack (if any) is synchronized with the
		 * context at the moment of the trap, to facilitate
		 * access through the debugger.
		 */
		FUNC30(state);
#if  MACH_KDP
		if (kdp_i386_trap(type, saved_state, result, (vm_offset_t)vaddr))
			return;
#endif
	}
	FUNC22();
	FUNC24(saved_state, trap_pl, fault_result);
	/*
	 * NO RETURN
	 */
}