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
struct ucred {int dummy; } ;
struct task {int dummy; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ucred*,struct proc*) ; 
 struct ucred* FUNC1 () ; 
 struct proc* FUNC2 (struct task*) ; 
 int /*<<< orphan*/  proc_check_expose_task ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 

int
FUNC4(struct task *task)
{
	int error;

	struct proc *p = FUNC2(task);
	if (p == NULL)
		return ESRCH;

	struct ucred *cred = FUNC1();
	FUNC0(proc_check_expose_task, cred, p);
	FUNC3(p);
	return (error);
}