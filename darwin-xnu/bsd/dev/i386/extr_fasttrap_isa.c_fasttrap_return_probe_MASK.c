#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86_saved_state_t ;
struct TYPE_9__ {void* rip; } ;
struct TYPE_10__ {TYPE_1__ isf; } ;
typedef  TYPE_2__ x86_saved_state64_t ;
struct TYPE_11__ {void* eip; } ;
typedef  TYPE_3__ x86_saved_state32_t ;
typedef  TYPE_4__* uthread_t ;
typedef  void* user_addr_t ;
struct TYPE_13__ {int p_lflag; int /*<<< orphan*/  p_pid; struct TYPE_13__* p_pptr; } ;
typedef  TYPE_5__ proc_t ;
struct TYPE_12__ {scalar_t__ t_dtrace_astpc; scalar_t__ t_dtrace_scrpc; void* t_dtrace_npc; void* t_dtrace_pc; } ;

/* Variables and functions */
 unsigned int DATAMODEL_ILP32 ; 
 unsigned int DATAMODEL_LP64 ; 
 int P_LINVFORK ; 
 TYPE_5__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(x86_saved_state_t *regs)
{
	x86_saved_state64_t *regs64;
	x86_saved_state32_t *regs32;
	unsigned int p_model;

        if (FUNC4(regs)) {
                regs64 = FUNC8(regs);
		regs32 = NULL;
		p_model = DATAMODEL_LP64;
        } else {
		regs64 = NULL;
                regs32 = FUNC7(regs);
		p_model = DATAMODEL_ILP32;
        }

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
	FUNC5();
	while (p->p_lflag & P_LINVFORK)
		p = p->p_pptr;
	FUNC6();

	/*
	 * We set rp->r_pc to the address of the traced instruction so
	 * that it appears to dtrace_probe() that we're on the original
	 * instruction, and so that the user can't easily detect our
	 * complex web of lies. dtrace_return_probe() (our caller)
	 * will correctly set %pc after we return.
	 */
	if (p_model == DATAMODEL_LP64)
		regs64->isf.rip = pc;
	else
		regs32->eip = pc;

	FUNC2(regs, pc, p->p_pid, npc);

	return (0);
}