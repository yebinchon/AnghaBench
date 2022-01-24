#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_suspension_token_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_kobject_t ;
struct TYPE_6__ {scalar_t__ itk_resume; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  IKOT_TASK_RESUME ; 
 scalar_t__ IP_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

ipc_port_t
FUNC9(
	task_suspension_token_t		task)
{
	ipc_port_t port;

	FUNC6(task);
	if (task->active) {
		if (task->itk_resume == IP_NULL) {
			task->itk_resume = FUNC3();
			if (!FUNC0(task->itk_resume)) {
				FUNC5("failed to create resume port");
			}

			FUNC2(task->itk_resume, (ipc_kobject_t) task, IKOT_TASK_RESUME);
		}

		/*
		 * Create a send-once right for each instance of a direct user-called
		 * task_suspend2 call. Each time one of these send-once rights is abandoned,
		 * the notification handler will resume the target task.
		 */
		port = FUNC4(task->itk_resume);
		FUNC1(FUNC0(port));
	} else {
		port = IP_NULL;
	}

	FUNC8(task);
	FUNC7(task);

	return port;
}