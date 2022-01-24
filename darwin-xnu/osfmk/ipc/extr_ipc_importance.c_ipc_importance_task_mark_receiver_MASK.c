#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipc_importance_task_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_4__ {scalar_t__ iit_assertcnt; scalar_t__ iit_externcnt; scalar_t__ iit_externdrop; scalar_t__ iit_denap; int iit_receiver; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(ipc_importance_task_t task_imp, boolean_t receiving)
{
	FUNC1(task_imp != NULL);	

	FUNC2();
	if (receiving) {
		FUNC1(task_imp->iit_assertcnt == 0);
		FUNC1(task_imp->iit_externcnt == 0);
		FUNC1(task_imp->iit_externdrop == 0);
		FUNC1(task_imp->iit_denap == 0);
		task_imp->iit_receiver = 1;  /* task can receive importance boost */
	} else if (task_imp->iit_receiver) {
		FUNC1(task_imp->iit_denap == 0);
		if (task_imp->iit_assertcnt != 0 || FUNC0(task_imp) != 0) {
			FUNC4("disabling imp_receiver on task with pending importance boosts!");
		}
		task_imp->iit_receiver = 0;
	}
	FUNC3();
}