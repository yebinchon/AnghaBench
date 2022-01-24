#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uthread_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  task_t ;
typedef  TYPE_2__* proc_t ;
typedef  int int32_t ;
struct TYPE_10__ {scalar_t__ p_vforkact; int /*<<< orphan*/  p_lflag; } ;
struct TYPE_9__ {int uu_flag; int /*<<< orphan*/  uu_vforkmask; int /*<<< orphan*/  uu_sigmask; scalar_t__ uu_proc; scalar_t__ uu_userstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  P_LINVFORK ; 
 int UT_SETUID ; 
 int UT_VFORK ; 
 int UT_WASSETUID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void
FUNC9(proc_t child_proc, int32_t *retval, int rval)
{
	task_t parent_task = FUNC4(child_proc->p_vforkact);
	proc_t parent_proc = FUNC2(parent_task);
	thread_t th = FUNC1();
	uthread_t uth = FUNC3(th);
	
	FUNC0(uth->uu_userstate);

	/* clear vfork state in parent proc structure */
	FUNC7(parent_proc);

	/* REPATRIATE PARENT TASK, THREAD, UTHREAD */
	uth->uu_userstate = 0;
	uth->uu_flag &= ~UT_VFORK;
	/* restore thread-set-id state */
	if (uth->uu_flag & UT_WASSETUID) {
		uth->uu_flag |= UT_SETUID;
		uth->uu_flag &= UT_WASSETUID;
	}
	uth->uu_proc = 0;
	uth->uu_sigmask = uth->uu_vforkmask;

	FUNC5(child_proc);
	child_proc->p_lflag &= ~P_LINVFORK;
	child_proc->p_vforkact = 0;
	FUNC6(child_proc);

	FUNC8(th, rval);

	if (retval) {
		retval[0] = rval;
		retval[1] = 0;			/* mark parent */
	}
}