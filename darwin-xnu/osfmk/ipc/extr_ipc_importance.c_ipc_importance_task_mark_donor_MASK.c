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
typedef  TYPE_1__* ipc_importance_task_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_3__ {int iit_donor; int /*<<< orphan*/  iit_task; int /*<<< orphan*/  iit_transitions; } ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IMP_DONOR_CHANGE ; 
 int /*<<< orphan*/  IMP_DONOR_INIT_DONOR_STATE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(ipc_importance_task_t task_imp, boolean_t donating)
{
	FUNC2(task_imp != NULL);

	FUNC3();

	int old_donor = task_imp->iit_donor;

	task_imp->iit_donor = (donating ? 1 : 0);

	if (task_imp->iit_donor > 0 && old_donor == 0)
		task_imp->iit_transitions++;

	FUNC1(KDEBUG_TRACE,
	                          (FUNC0(IMP_DONOR_CHANGE, IMP_DONOR_INIT_DONOR_STATE)) | DBG_FUNC_NONE,
	                          FUNC5(task_imp->iit_task), donating,
	                          old_donor, task_imp->iit_donor, 0);
	
	FUNC4();
}