#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  scalar_t__ task_t ;
struct pid_for_task_args {int t; int /*<<< orphan*/  pid; } ;
typedef  scalar_t__ proc_t ;
typedef  int mach_port_name_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AUE_PIDFORTASK ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ TASK_NULL ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int mach_port1 ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 

kern_return_t
FUNC10(
	struct pid_for_task_args *args)
{
	mach_port_name_t	t = args->t;
	user_addr_t		pid_addr  = args->pid;  
	proc_t p;
	task_t		t1;
	int	pid = -1;
	kern_return_t	err = KERN_SUCCESS;

	FUNC1(AUE_PIDFORTASK);
	FUNC0(mach_port1, t);

	t1 = FUNC6(t);

	if (t1 == TASK_NULL) {
		err = KERN_FAILURE;
		goto pftout;
	} else {
		p = FUNC4(t1);
		if (p) {
			pid  = FUNC7(p);
			err = KERN_SUCCESS;
		} else if (FUNC5(t1)) {
			pid = FUNC9(t1);
			err = KERN_SUCCESS;
		}else {
			err = KERN_FAILURE;
		}
	}
	FUNC8(t1);
pftout:
	FUNC0(pid, pid);
	(void) FUNC3((char *) &pid, pid_addr, sizeof(int));
	FUNC2(err);
	return(err);
}