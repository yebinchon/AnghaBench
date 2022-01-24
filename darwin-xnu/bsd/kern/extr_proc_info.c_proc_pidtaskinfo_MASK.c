#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_t ;
struct proc_taskinfo_internal {int dummy; } ;
struct proc_taskinfo {int dummy; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_3__ {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc_taskinfo*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct proc_taskinfo_internal*) ; 

int 
FUNC2(proc_t p, struct proc_taskinfo * ptinfo)
{
	task_t task;
	
	task = p->task;

	FUNC0(ptinfo, sizeof(struct proc_taskinfo));
	FUNC1(task, (struct proc_taskinfo_internal *)ptinfo);

	return(0);
}