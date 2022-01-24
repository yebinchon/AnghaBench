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
typedef  int /*<<< orphan*/  task_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(task_t current_task, task_t target)
{
	void *c_proc;
	void *t_proc;

	c_proc = FUNC1(current_task);
	t_proc = FUNC1(target);
	if (c_proc && t_proc) {
		FUNC0(c_proc, t_proc);
	}
}