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
struct TYPE_3__ {int iit_live_donor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(ipc_importance_task_t task_imp, boolean_t live_donating)
{
	FUNC0(task_imp != NULL);

	FUNC1();
	task_imp->iit_live_donor = (live_donating ? 1 : 0);
	FUNC2();
}