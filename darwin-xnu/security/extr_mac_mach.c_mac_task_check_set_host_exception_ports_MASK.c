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
struct task {int dummy; } ;
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int ESRCH ; 
 int EXC_TYPES_COUNT ; 
 int FIRST_EXCEPTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct proc* FUNC3 (struct task*) ; 
 int /*<<< orphan*/  proc_check_set_host_exception_port ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 

int
FUNC5(struct task *task, unsigned int exception_mask)
{
	int error = 0;
	int exception;

	struct proc *p = FUNC3(task);
	if (p == NULL)
		return ESRCH;

	kauth_cred_t cred = FUNC1(p);
	for (exception = FIRST_EXCEPTION; exception < EXC_TYPES_COUNT; exception++) {
		if (exception_mask & (1 << exception)) {
			FUNC0(proc_check_set_host_exception_port, cred, exception);
			if (error)
				break;
		}
	}
	FUNC2(&cred);
	FUNC4(p);
	return (error);
}