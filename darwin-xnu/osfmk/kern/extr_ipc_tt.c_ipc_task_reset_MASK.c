#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
struct label {int dummy; } ;
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_kobject_t ;
struct TYPE_8__ {scalar_t__ port; int /*<<< orphan*/  privileged; } ;
struct TYPE_7__ {scalar_t__ itk_self; scalar_t__ itk_sself; int exec_token; scalar_t__ itk_debug_control; TYPE_3__* exc_actions; } ;

/* Variables and functions */
 int EXC_CORPSE_NOTIFY ; 
 int EXC_TYPES_COUNT ; 
 int FIRST_EXCEPTION ; 
 int /*<<< orphan*/  IKOT_NONE ; 
 int /*<<< orphan*/  IKOT_TASK ; 
 int /*<<< orphan*/  IKO_NULL ; 
 scalar_t__ IP_NULL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 struct label* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct label*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,struct label*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 

void
FUNC16(
	task_t		task)
{
	ipc_port_t old_kport, new_kport;
	ipc_port_t old_sself;
	ipc_port_t old_exc_actions[EXC_TYPES_COUNT];
	int i;

#if CONFIG_MACF
	/* Fresh label to unset credentials in existing labels. */
	struct label *unset_label = mac_exc_create_label();
#endif
	
	new_kport = FUNC5();
	if (new_kport == IP_NULL)
		FUNC14("ipc_task_reset");

	FUNC9(task);

	old_kport = task->itk_self;

	if (old_kport == IP_NULL) {
		/* the task is already terminated (can this happen?) */
		FUNC10(task);
		FUNC6(new_kport);
#if CONFIG_MACF
		mac_exc_free_label(unset_label);
#endif
		return;
	}

	task->itk_self = new_kport;
	old_sself = task->itk_sself;
	task->itk_sself = FUNC7(new_kport);

	/* Set the old kport to IKOT_NONE and update the exec token while under the port lock */
	FUNC1(old_kport);
	FUNC4(old_kport, IKO_NULL, IKOT_NONE);
	task->exec_token += 1;
	FUNC2(old_kport);

	FUNC3(new_kport, (ipc_kobject_t) task, IKOT_TASK);

	for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
		old_exc_actions[i] = IP_NULL;

		if (i == EXC_CORPSE_NOTIFY && FUNC15(task)) {
			continue;
		}

		if (!task->exc_actions[i].privileged) {
#if CONFIG_MACF
			mac_exc_update_action_label(task->exc_actions + i, unset_label);
#endif
			old_exc_actions[i] = task->exc_actions[i].port;
			task->exc_actions[i].port = IP_NULL;
		}
	}/* for */
	
	if (FUNC0(task->itk_debug_control)) {
		FUNC8(task->itk_debug_control);
	}
	task->itk_debug_control = IP_NULL;
	
	FUNC10(task);

#if CONFIG_MACF
	mac_exc_free_label(unset_label);
#endif

	/* release the naked send rights */

	if (FUNC0(old_sself))
		FUNC8(old_sself);

	for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
		if (FUNC0(old_exc_actions[i])) {
			FUNC8(old_exc_actions[i]);
		}
	}/* for */

	/* destroy the kernel port */
	FUNC6(old_kport);
}