#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_t ;
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_5__ {int p_lflag; scalar_t__ sigwait; int /*<<< orphan*/  p_stat; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int P_LSIGEXC ; 
 int P_LTRACED ; 
 int /*<<< orphan*/  SRUN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(proc_t p)
{
	task_t task;

	task = p->task;

	if (p->p_lflag & P_LTRACED) {
		FUNC0(p);
		p->p_stat = SRUN;
		FUNC1(p);
		if (p->sigwait) {
			FUNC3((caddr_t)&(p->sigwait));
			if ((p->p_lflag & P_LSIGEXC) == 0) {	// 5878479
				FUNC2(task);
			}
		}
	}
}