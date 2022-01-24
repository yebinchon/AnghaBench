#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
typedef  scalar_t__ kern_return_t ;
typedef  TYPE_2__* ipc_space_t ;
typedef  scalar_t__ ipc_port_t ;
struct TYPE_16__ {int /*<<< orphan*/  privileged; int /*<<< orphan*/  behavior; int /*<<< orphan*/  flavor; void* port; } ;
struct TYPE_15__ {TYPE_1__* is_task; } ;
struct TYPE_14__ {scalar_t__ itk_self; void* itk_task_access; void* itk_gssd; void* itk_seatbelt; void* itk_bootstrap; void* itk_host; TYPE_4__* exc_actions; void** itk_registered; TYPE_2__* itk_space; scalar_t__ itk_debug_control; scalar_t__ itk_sself; scalar_t__ itk_resume; scalar_t__ itk_nself; } ;

/* Variables and functions */
 int EXC_TYPES_COUNT ; 
 int FIRST_EXCEPTION ; 
 scalar_t__ IP_NULL ; 
 scalar_t__ KERN_SUCCESS ; 
 TYPE_1__* TASK_NULL ; 
 int TASK_PORT_REGISTER_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 void* FUNC4 (void*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/ * ipc_table_entries ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 

void
FUNC15(
	task_t		task,
	task_t		parent)
{
	ipc_space_t space;
	ipc_port_t kport;
	ipc_port_t nport;
	kern_return_t kr;
	int i;


	kr = FUNC6(&ipc_table_entries[0], &space);
	if (kr != KERN_SUCCESS)
		FUNC13("ipc_task_init");

	space->is_task = task;

	kport = FUNC3();
	if (kport == IP_NULL)
		FUNC13("ipc_task_init");

	nport = FUNC3();
	if (nport == IP_NULL)
		FUNC13("ipc_task_init");

	FUNC8(task);
	task->itk_self = kport;
	task->itk_nself = nport;
	task->itk_resume = IP_NULL; /* Lazily allocated on-demand */
	if (FUNC14(task)) {
		/*
		 * No sender's notification for corpse would not
		 * work with a naked send right in kernel.
		 */
		task->itk_sself = IP_NULL;
	} else {
		task->itk_sself = FUNC5(kport);
	}
	task->itk_debug_control = IP_NULL;
	task->itk_space = space;

#if CONFIG_MACF
	for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
		mac_exc_associate_action_label(&task->exc_actions[i], mac_exc_create_label());
	}
#endif
	
	if (parent == TASK_NULL) {
		ipc_port_t port;

		for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
			task->exc_actions[i].port = IP_NULL;
		}/* for */
		
		kr = FUNC1(FUNC2(), &port);
		FUNC0(kr == KERN_SUCCESS);
		task->itk_host = port;

		task->itk_bootstrap = IP_NULL;
		task->itk_seatbelt = IP_NULL;
		task->itk_gssd = IP_NULL;
		task->itk_task_access = IP_NULL;

		for (i = 0; i < TASK_PORT_REGISTER_MAX; i++)
			task->itk_registered[i] = IP_NULL;
	} else {
		FUNC7(parent);
		FUNC0(parent->itk_self != IP_NULL);

		/* inherit registered ports */

		for (i = 0; i < TASK_PORT_REGISTER_MAX; i++)
			task->itk_registered[i] =
				FUNC4(parent->itk_registered[i]);

		/* inherit exception and bootstrap ports */

		for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
		    task->exc_actions[i].port =
		  		FUNC4(parent->exc_actions[i].port);
		    task->exc_actions[i].flavor =
				parent->exc_actions[i].flavor;
		    task->exc_actions[i].behavior = 
				parent->exc_actions[i].behavior;
		    task->exc_actions[i].privileged =
				parent->exc_actions[i].privileged;
#if CONFIG_MACF
		    mac_exc_inherit_action_label(parent->exc_actions + i, task->exc_actions + i);
#endif
		}/* for */
		task->itk_host =
			FUNC4(parent->itk_host);

		task->itk_bootstrap =
			FUNC4(parent->itk_bootstrap);

		task->itk_seatbelt =
			FUNC4(parent->itk_seatbelt);

		task->itk_gssd =
			FUNC4(parent->itk_gssd);

		task->itk_task_access =
			FUNC4(parent->itk_task_access);

		FUNC9(parent);
	}
}