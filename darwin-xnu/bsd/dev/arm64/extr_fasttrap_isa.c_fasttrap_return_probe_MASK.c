#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uthread_t ;
typedef  scalar_t__ user_addr_t ;
struct TYPE_6__ {int p_lflag; struct TYPE_6__* p_pptr; } ;
typedef  TYPE_2__ proc_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;
struct TYPE_5__ {scalar_t__ t_dtrace_astpc; scalar_t__ t_dtrace_scrpc; scalar_t__ t_dtrace_npc; scalar_t__ t_dtrace_pc; } ;

/* Variables and functions */
 int P_LINVFORK ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 

int
FUNC7(arm_saved_state_t *regs)
{
	proc_t *p = FUNC0();
	uthread_t uthread = (uthread_t)FUNC3(FUNC1());
	user_addr_t pc = uthread->t_dtrace_pc;
	user_addr_t npc = uthread->t_dtrace_npc;

	uthread->t_dtrace_pc = 0;
	uthread->t_dtrace_npc = 0;
	uthread->t_dtrace_scrpc = 0;
	uthread->t_dtrace_astpc = 0;

	/*
	 * Treat a child created by a call to vfork(2) as if it were its
	 * parent. We know that there's only one thread of control in such a
	 * process: this one.
	 */
	if (p->p_lflag & P_LINVFORK) {
		FUNC4();
		while (p->p_lflag & P_LINVFORK)
			p = p->p_pptr;
		FUNC5();
	}

	/*
	 * We set rp->r_pc to the address of the traced instruction so
	 * that it appears to dtrace_probe() that we're on the original
	 * instruction, and so that the user can't easily detect our
	 * complex web of lies. dtrace_return_probe() (our caller)
	 * will correctly set %pc after we return.
	 */
	FUNC6(regs, pc);

	FUNC2(p, regs, pc, npc);

	return (0);
}