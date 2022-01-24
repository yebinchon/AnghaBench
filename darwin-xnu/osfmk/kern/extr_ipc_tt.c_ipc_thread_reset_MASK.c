#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct label {int dummy; } ;
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_kobject_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_8__ {scalar_t__ port; scalar_t__ privileged; } ;
struct TYPE_7__ {scalar_t__ ith_self; scalar_t__ inspection; scalar_t__ ith_sself; scalar_t__ ith_special_reply_port; TYPE_4__* exc_actions; } ;

/* Variables and functions */
 int EXC_TYPES_COUNT ; 
 scalar_t__ FALSE ; 
 int FIRST_EXCEPTION ; 
 int /*<<< orphan*/  IKOT_NONE ; 
 int /*<<< orphan*/  IKOT_THREAD ; 
 int /*<<< orphan*/  IKO_NULL ; 
 scalar_t__ IP_NULL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 struct label* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct label*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,struct label*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

void
FUNC13(
	thread_t	thread)
{
	ipc_port_t old_kport, new_kport;
	ipc_port_t old_sself;
	ipc_port_t old_exc_actions[EXC_TYPES_COUNT];
	boolean_t  has_old_exc_actions = FALSE;	
	int		   i;

#if CONFIG_MACF
	struct label *new_label = mac_exc_create_label();
#endif
	
	new_kport = FUNC2();
	if (new_kport == IP_NULL)
		FUNC10("ipc_task_reset");

	FUNC11(thread);

	old_kport = thread->ith_self;

	if (old_kport == IP_NULL && thread->inspection == FALSE) {
		/* the  is already terminated (can this happen?) */
		FUNC12(thread);
		FUNC3(new_kport);
#if CONFIG_MACF
		mac_exc_free_label(new_label);
#endif
		return;
	}

	thread->ith_self = new_kport;
	old_sself = thread->ith_sself;
	thread->ith_sself = FUNC4(new_kport);
	if (old_kport != IP_NULL) {
		FUNC1(old_kport, IKO_NULL, IKOT_NONE);
	}
	FUNC1(new_kport, (ipc_kobject_t) thread, IKOT_THREAD);

	/*
	 * Only ports that were set by root-owned processes
	 * (privileged ports) should survive 
	 */
	if (thread->exc_actions != NULL) {
		has_old_exc_actions = TRUE;
		for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
			if (thread->exc_actions[i].privileged) {
				old_exc_actions[i] = IP_NULL;
			} else {
#if CONFIG_MACF
				mac_exc_update_action_label(thread->exc_actions + i, new_label);
#endif
				old_exc_actions[i] = thread->exc_actions[i].port;
				thread->exc_actions[i].port = IP_NULL;		
			}
		}
	}

	FUNC12(thread);

#if CONFIG_MACF
	mac_exc_free_label(new_label);
#endif
	
	/* release the naked send rights */

	if (FUNC0(old_sself))
		FUNC5(old_sself);

	if (has_old_exc_actions) {
		for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
			FUNC5(old_exc_actions[i]);
		}
	}

	/* destroy the kernel port */
	if (old_kport != IP_NULL) {
		FUNC3(old_kport);
	}

	/* unbind the thread special reply port */
	if (FUNC0(thread->ith_special_reply_port)) {
		FUNC6(thread, TRUE);
	}
}