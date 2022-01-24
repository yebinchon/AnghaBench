#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86_saved_state_t ;
struct TYPE_9__ {int trapno; void* rip; } ;
struct TYPE_10__ {TYPE_1__ isf; } ;
typedef  TYPE_2__ x86_saved_state64_t ;
struct TYPE_11__ {int cs; int trapno; void* eip; } ;
typedef  TYPE_3__ x86_saved_state32_t ;
typedef  TYPE_4__* uthread_t ;
typedef  void* user_addr_t ;
typedef  scalar_t__ uint8_t ;
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  lck_rw_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_13__ {int /*<<< orphan*/  cpu_ft_lock; } ;
struct TYPE_12__ {scalar_t__ t_dtrace_step; scalar_t__ t_dtrace_ret; scalar_t__ t_dtrace_ft; scalar_t__ t_dtrace_ast; void* t_dtrace_npc; } ;

/* Variables and functions */
 TYPE_8__* CPU ; 
 scalar_t__ FASTTRAP_INSTR ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ TRUE ; 
 int T_DTRACE_RET ; 
 int T_INT3 ; 
 struct proc* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (void*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,struct proc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

kern_return_t
FUNC15(x86_saved_state_t *regs)
{
	x86_saved_state64_t *regs64;
	x86_saved_state32_t *regs32;
        int trapno;

	/*
	 * FIXME!
	 *
	 * The only call path into this method is always a user trap.
	 * We don't need to test for user trap, but should assert it.
	 */
	boolean_t user_mode = TRUE;

        if (FUNC6(regs) == TRUE) {
                regs64 = FUNC12(regs);
		regs32 = NULL;
                trapno = regs64->isf.trapno;
                user_mode = TRUE; // By default, because xnu is 32 bit only
        } else {
		regs64 = NULL;
                regs32 = FUNC11(regs);
                if (regs32->cs & 0x03) user_mode = TRUE;
                trapno = regs32->trapno;
        }

	lck_rw_t *rwp;
	struct proc *p = FUNC0();

	uthread_t uthread = (uthread_t)FUNC5(FUNC1());
	if (user_mode /*|| (rp->r_ps & PS_VM)*/) {
		/*
		 * DTrace accesses t_cred in probe context.  t_cred
		 * must always be either NULL, or point to a valid,
		 * allocated cred structure.
		 */
		FUNC7(uthread, p);
	}

	if (trapno == T_DTRACE_RET) {
		uint8_t step = uthread->t_dtrace_step;
		uint8_t ret = uthread->t_dtrace_ret;
		user_addr_t npc = uthread->t_dtrace_npc;

		if (uthread->t_dtrace_ast) {
			FUNC10("dtrace_user_probe() should be calling aston()\n");
			// aston(uthread);
			// uthread->t_sig_check = 1;
		}

		/*
		 * Clear all user tracing flags.
		 */
		uthread->t_dtrace_ft = 0;

		/*
		 * If we weren't expecting to take a return probe trap, kill
		 * the process as though it had just executed an unassigned
		 * trap instruction.
		 */
		if (step == 0) {
			/*
			 * APPLE NOTE: We're returning KERN_FAILURE, which causes 
			 * the generic signal handling code to take over, which will effectively
			 * deliver a EXC_BAD_INSTRUCTION to the user process.
			 */
	 		return KERN_FAILURE;
		}

		/*
		 * If we hit this trap unrelated to a return probe, we're
		 * just here to reset the AST flag since we deferred a signal
		 * until after we logically single-stepped the instruction we
		 * copied out.
		 */
		if (ret == 0) {
			if (regs64) {
				regs64->isf.rip = npc;
			} else {
				regs32->eip = npc;
			}
			return KERN_SUCCESS;
		}

		/*
		 * We need to wait until after we've called the
		 * dtrace_return_probe_ptr function pointer to set %pc.
		 */
		rwp = &CPU->cpu_ft_lock;
		FUNC8(rwp);

		if (&dtrace_return_probe_ptr != NULL)
			(void) FUNC3)(regs);
		FUNC9(rwp);

		if (regs64) {
			regs64->isf.rip = npc;
		} else {
			regs32->eip = npc;
		}

		return KERN_SUCCESS;
	} else if (trapno == T_INT3) {
		uint8_t instr, instr2;
		rwp = &CPU->cpu_ft_lock;

		/*
		 * The DTrace fasttrap provider uses the breakpoint trap
		 * (int 3). We let DTrace take the first crack at handling
		 * this trap; if it's not a probe that DTrace knowns about,
		 * we call into the trap() routine to handle it like a
		 * breakpoint placed by a conventional debugger.
		 */

		/*
		 * APPLE NOTE: I believe the purpose of the reader/writers lock
		 * is thus: There are times which dtrace needs to prevent calling
		 * dtrace_pid_probe_ptr(). Sun's original impl grabbed a plain
		 * mutex here. However, that serialized all probe calls, and
		 * destroyed MP behavior. So now they use a RW lock, with probes
		 * as readers, and the top level synchronization as a writer.
		 */
		FUNC8(rwp);
		if (&dtrace_pid_probe_ptr != NULL && 
		    FUNC2)(regs) == 0) {
			FUNC9(rwp);
			return KERN_SUCCESS;
		}
		FUNC9(rwp);


		/*
		 * If the instruction that caused the breakpoint trap doesn't
		 * look like an int 3 anymore, it may be that this tracepoint
		 * was removed just after the user thread executed it. In
		 * that case, return to user land to retry the instuction.
		 */
		user_addr_t pc = (regs64) ? regs64->isf.rip : (user_addr_t)regs32->eip;
		if (FUNC4(pc - 1, &instr) == 0 && instr != FASTTRAP_INSTR && // neither single-byte INT3 (0xCC)
			!(instr == 3 && FUNC4(pc - 2, &instr2) == 0 && instr2 == 0xCD)) { // nor two-byte INT 3 (0xCD03)
			if (regs64) {
				regs64->isf.rip--;
			} else {
				regs32->eip--;
			}
			return KERN_SUCCESS;
		}

	}

	return KERN_FAILURE;
}