#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  thread_t ;
struct uthread {int uu_flag; int uu_siglist; int uu_sigwait; int uu_sigmask; scalar_t__ uu_exit_reason; int /*<<< orphan*/  uu_code; TYPE_1__* uu_proc; } ;
struct task {int dummy; } ;
typedef  TYPE_1__* proc_t ;
typedef  scalar_t__ os_reason_t ;
typedef  int /*<<< orphan*/  mach_exception_code_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_4__ {int p_lflag; int p_sigignore; int p_sigcatch; int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BSD_PROC_EXITREASON_CREATE ; 
 int /*<<< orphan*/  DBG_BSD_PROC ; 
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NSIG ; 
 scalar_t__ OS_REASON_NULL ; 
 int /*<<< orphan*/  OS_REASON_SIGNAL ; 
 int P_LTRACED ; 
 int /*<<< orphan*/  TRUE ; 
 int UT_VFORK ; 
 scalar_t__ FUNC2 (int,char*) ; 
 int contsigmask ; 
 scalar_t__ FUNC3 (struct task*) ; 
 struct uthread* FUNC4 (int /*<<< orphan*/ ) ; 
 struct task* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int stopsigmask ; 
 int threadmask ; 

void
FUNC11(thread_t sig_actthread, int signum, mach_exception_code_t code, boolean_t set_exitreason)
{
	struct uthread *uth;
	struct task * sig_task;
	proc_t p;
	int mask;

	if ((u_int)signum >= NSIG || signum == 0)
		return;

	mask = FUNC9(signum);
	if ((mask & threadmask) == 0)
		return;
	sig_task = FUNC5(sig_actthread);
	p = (proc_t)(FUNC3(sig_task));

	uth = FUNC4(sig_actthread);
	if (uth->uu_flag & UT_VFORK)
		p = uth->uu_proc;

	FUNC6(p);
	if (!(p->p_lflag & P_LTRACED) && (p->p_sigignore & mask)) {
		FUNC7(p);
		return;
	}

	uth->uu_siglist |= mask;
	uth->uu_code = code;

	/* Attempt to establish whether the signal will be fatal (mirrors logic in psignal_internal()) */
	if (set_exitreason && ((p->p_lflag & P_LTRACED) || (!(uth->uu_sigwait & mask)
		&& !(uth->uu_sigmask & mask) && !(p->p_sigcatch & mask))) &&
		!(mask & stopsigmask) && !(mask & contsigmask)) {

		if (uth->uu_exit_reason == OS_REASON_NULL) {
			FUNC1(FUNC0(DBG_BSD_PROC, BSD_PROC_EXITREASON_CREATE) | DBG_FUNC_NONE,
								p->p_pid, OS_REASON_SIGNAL, signum, 0, 0);

			os_reason_t signal_reason = FUNC2(signum, "exc handler");

			FUNC8(sig_actthread, signal_reason, TRUE);

			/* We dropped/consumed the reference in set_thread_exit_reason() */
			signal_reason = OS_REASON_NULL;
		}
	}

	FUNC7(p);

	/* mark on process as well */
	FUNC10(sig_actthread);
}