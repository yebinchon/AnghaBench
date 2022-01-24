#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
typedef  scalar_t__ ipc_port_t ;
struct TYPE_8__ {int /*<<< orphan*/  port; } ;
struct TYPE_7__ {scalar_t__ itk_self; scalar_t__ itk_nself; scalar_t__ itk_resume; int /*<<< orphan*/ * itk_registered; int /*<<< orphan*/  itk_debug_control; int /*<<< orphan*/  itk_task_access; int /*<<< orphan*/  itk_gssd; int /*<<< orphan*/  itk_seatbelt; int /*<<< orphan*/  itk_bootstrap; int /*<<< orphan*/  itk_host; TYPE_2__* exc_actions; int /*<<< orphan*/  itk_sself; } ;

/* Variables and functions */
 int EXC_TYPES_COUNT ; 
 int FIRST_EXCEPTION ; 
 scalar_t__ IP_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TASK_PORT_REGISTER_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void
FUNC8(
	task_t		task)
{
	ipc_port_t kport;
	ipc_port_t nport;
	ipc_port_t rport;	
	int i;

	FUNC4(task);
	kport = task->itk_self;

	if (kport == IP_NULL) {
		/* the task is already terminated (can this happen?) */
		FUNC6(task);
		return;
	}
	task->itk_self = IP_NULL;

	nport = task->itk_nself;
	FUNC1(nport != IP_NULL);
	task->itk_nself = IP_NULL;

	rport = task->itk_resume;
	task->itk_resume = IP_NULL;

	FUNC6(task);

	/* release the naked send rights */

	if (FUNC0(task->itk_sself))
		FUNC3(task->itk_sself);

	for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
		if (FUNC0(task->exc_actions[i].port)) {
			FUNC3(task->exc_actions[i].port);
		}
#if CONFIG_MACF
		mac_exc_free_action_label(task->exc_actions + i);
#endif
	}

	if (FUNC0(task->itk_host))
		FUNC3(task->itk_host);

	if (FUNC0(task->itk_bootstrap))
		FUNC3(task->itk_bootstrap);

	if (FUNC0(task->itk_seatbelt))
		FUNC3(task->itk_seatbelt);
	
	if (FUNC0(task->itk_gssd))
		FUNC3(task->itk_gssd);

	if (FUNC0(task->itk_task_access))
		FUNC3(task->itk_task_access);

	if (FUNC0(task->itk_debug_control))
		FUNC3(task->itk_debug_control);

	for (i = 0; i < TASK_PORT_REGISTER_MAX; i++)
		if (FUNC0(task->itk_registered[i]))
			FUNC3(task->itk_registered[i]);

	/* destroy the kernel ports */
	FUNC2(kport);
	FUNC2(nport);
	if (rport != IP_NULL)
		FUNC2(rport);	

	FUNC5(task);
}