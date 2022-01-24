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

/* Variables and functions */
 struct task* FUNC0 () ; 
 struct proc* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 struct proc* FUNC3 () ; 
 struct task* FUNC4 (struct proc*) ; 
 int FUNC5 (struct task*) ; 

__attribute__((used)) static struct proc *
FUNC6(struct task *task)
{
	if (task == FUNC0())
		return FUNC3();

	/*
	 * Tasks don't really hold a reference on a proc unless the
	 * calling thread belongs to the task in question.
	 */
	int pid = FUNC5(task);
	struct proc *p = FUNC1(pid);

	if (p != NULL) {
		if (FUNC4(p) == task)
			return p;
		FUNC2(p);
	}
	return NULL;
}