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

/* Variables and functions */
 int /*<<< orphan*/ * ipc_importance_delayed_drop_call ; 
 int /*<<< orphan*/  ipc_importance_delayed_drop_queue ; 
 int /*<<< orphan*/  ipc_importance_task_delayed_drop_scan ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{
	/* initialize delayed drop queue and thread-call */
	FUNC1(&ipc_importance_delayed_drop_queue);
	ipc_importance_delayed_drop_call = 
		FUNC2(ipc_importance_task_delayed_drop_scan, NULL);
	if (NULL == ipc_importance_delayed_drop_call) {
		FUNC0("ipc_importance_init");
	}
}