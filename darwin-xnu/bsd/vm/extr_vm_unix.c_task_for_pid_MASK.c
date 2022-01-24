#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  scalar_t__ task_t ;
struct task_for_pid_args {int pid; int /*<<< orphan*/  t; TYPE_1__* target_tport; } ;
typedef  TYPE_1__* proc_t ;
typedef  TYPE_1__* mach_port_name_t ;
typedef  int kern_return_t ;
typedef  scalar_t__ ipc_port_t ;
struct TYPE_11__ {scalar_t__ task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  AUE_TASKFORPID ; 
 scalar_t__ IPC_PORT_DEAD ; 
 scalar_t__ IPC_PORT_NULL ; 
 int KERN_ABORTED ; 
 int KERN_FAILURE ; 
 int KERN_PROTECTION_FAILURE ; 
 int KERN_SUCCESS ; 
 int MACH_MSG_SUCCESS ; 
 void* MACH_PORT_NULL ; 
 int MACH_RCV_INTERRUPTED ; 
 TYPE_1__* PROC_NULL ; 
 scalar_t__ TASK_NULL ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  mach_port1 ; 
 int /*<<< orphan*/  mach_port2 ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 
 TYPE_1__* FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  process ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 scalar_t__ FUNC23 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 

kern_return_t
FUNC25(
	struct task_for_pid_args *args)
{
	mach_port_name_t	target_tport = args->target_tport;
	int			pid = args->pid;
	user_addr_t		task_addr = args->t;
	proc_t 			p = PROC_NULL;
	task_t			t1 = TASK_NULL;
	task_t			task = TASK_NULL;
	mach_port_name_t	tret = MACH_PORT_NULL;
	ipc_port_t 		tfpport = MACH_PORT_NULL;
	void * sright;
	int error = 0;

	FUNC1(AUE_TASKFORPID);
	FUNC0(pid, pid);
	FUNC0(mach_port1, target_tport);

	/* Always check if pid == 0 */
	if (pid == 0) {
		(void ) FUNC5((char *)&t1, task_addr, sizeof(mach_port_name_t));
		FUNC2(KERN_FAILURE);
		return(KERN_FAILURE);
	}

	t1 = FUNC17(target_tport);
	if (t1 == TASK_NULL) {
		(void) FUNC5((char *)&t1, task_addr, sizeof(mach_port_name_t));
		FUNC2(KERN_FAILURE);
		return(KERN_FAILURE);
	} 


	p = FUNC18(pid);
	if (p == PROC_NULL) {
		error = KERN_FAILURE;
		goto tfpout;
	}

#if CONFIG_AUDIT
	AUDIT_ARG(process, p);
#endif

	if (!(FUNC22(p))) {
		error = KERN_FAILURE;
		goto tfpout;
	}

	if (p->task == TASK_NULL) {
		error = KERN_SUCCESS;
		goto tfpout;
	}

#if CONFIG_MACF
	error = mac_proc_check_get_task(kauth_cred_get(), p);
	if (error) {
		error = KERN_FAILURE;
		goto tfpout;
	}
#endif

	/* Grab a task reference since the proc ref might be dropped if an upcall to task access server is made */
	task = p->task;
	FUNC24(task);

	/* If we aren't root and target's task access port is set... */
	if (!FUNC14(FUNC13()) &&
		p != FUNC6() &&
		(FUNC23(task, &tfpport) == 0) &&
		(tfpport != IPC_PORT_NULL)) {

		if (tfpport == IPC_PORT_DEAD) {
			error = KERN_PROTECTION_FAILURE;
			goto tfpout;
		}

		/*
		 * Drop the proc_find proc ref before making an upcall
		 * to taskgated, since holding a proc_find
		 * ref while making an upcall can cause deadlock.
		 */
		FUNC19(p);
		p = PROC_NULL;

		/* Call up to the task access server */
		error = FUNC3(tfpport, FUNC20(), FUNC15(), pid);

		if (error != MACH_MSG_SUCCESS) {
			if (error == MACH_RCV_INTERRUPTED)
				error = KERN_ABORTED;
			else
				error = KERN_FAILURE;
			goto tfpout;
		}
	}

	/* Grant task port access */
	FUNC8(task);
	sright = (void *) FUNC4(task);

	/* Check if the task has been corpsified */
	if (FUNC12(task)) {
		/* task ref consumed by convert_task_to_port */
		task = TASK_NULL;
		FUNC11(sright);
		error = KERN_FAILURE;
		goto tfpout;
	}

	/* task ref consumed by convert_task_to_port */
	task = TASK_NULL;
	tret = FUNC10(
			sright,
			FUNC9(FUNC7()));

	error = KERN_SUCCESS;

tfpout:
	FUNC21(t1);
	FUNC0(mach_port2, tret);
	(void) FUNC5((char *) &tret, task_addr, sizeof(mach_port_name_t));

	if (tfpport != IPC_PORT_NULL) {
		FUNC11(tfpport);
	}
	if (task != TASK_NULL) {
		FUNC21(task);
	}
	if (p != PROC_NULL)
		FUNC19(p);
	FUNC2(error);
	return(error);
}