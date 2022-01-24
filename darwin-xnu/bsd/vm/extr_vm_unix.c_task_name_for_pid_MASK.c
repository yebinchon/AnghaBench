#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  scalar_t__ task_t ;
struct task_name_for_pid_args {int pid; int /*<<< orphan*/  t; TYPE_1__* target_tport; } ;
typedef  TYPE_1__* proc_t ;
typedef  TYPE_1__* mach_port_name_t ;
typedef  int kern_return_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_12__ {scalar_t__ p_stat; scalar_t__ task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  AUE_TASKNAMEFORPID ; 
 int KERN_FAILURE ; 
 int KERN_SUCCESS ; 
 TYPE_1__* MACH_PORT_NULL ; 
 TYPE_1__* PROC_NULL ; 
 scalar_t__ SZOMB ; 
 scalar_t__ TASK_NULL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 () ; 
 int FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  mach_port1 ; 
 int /*<<< orphan*/  mach_port2 ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 
 TYPE_1__* FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  process ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 

kern_return_t
FUNC22(
	struct task_name_for_pid_args *args)
{
	mach_port_name_t	target_tport = args->target_tport;
	int			pid = args->pid;
	user_addr_t		task_addr = args->t;
	proc_t		p = PROC_NULL;
	task_t		t1;
	mach_port_name_t	tret;
	void * sright;
	int error = 0, refheld = 0;
	kauth_cred_t target_cred;

	FUNC1(AUE_TASKNAMEFORPID);
	FUNC0(pid, pid);
	FUNC0(mach_port1, target_tport);

	t1 = FUNC17(target_tport);
	if (t1 == TASK_NULL) {
		(void) FUNC4((char *)&t1, task_addr, sizeof(mach_port_name_t));
		FUNC2(KERN_FAILURE);
		return(KERN_FAILURE);
	} 

	p = FUNC18(pid);
	if (p != PROC_NULL) {
		FUNC0(process, p);
		target_cred = FUNC13(p);
		refheld = 1;

		if ((p->p_stat != SZOMB)
		    && ((FUNC5() == p)
			|| FUNC12(FUNC9()) 
			|| ((FUNC11(target_cred) == FUNC11(FUNC9())) && 
			    ((FUNC10(target_cred) == FUNC15()))))) {

			if (p->task != TASK_NULL) {
				FUNC21(p->task);
#if CONFIG_MACF
				error = mac_proc_check_get_task_name(kauth_cred_get(),  p);
				if (error) {
					task_deallocate(p->task);
					goto noperm;
				}
#endif
				sright = (void *)FUNC3(p->task);
				tret = FUNC8(sright, 
						FUNC7(FUNC6()));
			} else
				tret  = MACH_PORT_NULL;

			FUNC0(mach_port2, tret);
			(void) FUNC4((char *)&tret, task_addr, sizeof(mach_port_name_t));
			FUNC20(t1);
			error = KERN_SUCCESS;
			goto tnfpout;
		}
	}

#if CONFIG_MACF
noperm:
#endif
    FUNC20(t1);
	tret = MACH_PORT_NULL;
	(void) FUNC4((char *) &tret, task_addr, sizeof(mach_port_name_t));
	error = KERN_FAILURE;
tnfpout:
	if (refheld != 0)
		FUNC14(&target_cred);
	if (p != PROC_NULL)
		FUNC19(p);
	FUNC2(error);
	return(error);
}