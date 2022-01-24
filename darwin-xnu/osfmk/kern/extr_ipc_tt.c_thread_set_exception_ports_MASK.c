#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_t ;
typedef  scalar_t__ thread_state_flavor_t ;
struct label {int dummy; } ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  int exception_mask_t ;
typedef  int exception_behavior_t ;
typedef  int boolean_t ;
struct TYPE_10__ {scalar_t__* val; } ;
struct TYPE_13__ {TYPE_1__ sec_token; } ;
struct TYPE_12__ {int behavior; int privileged; scalar_t__ flavor; int /*<<< orphan*/  port; } ;
struct TYPE_11__ {TYPE_6__* exc_actions; int /*<<< orphan*/  active; } ;

/* Variables and functions */
#define  EXCEPTION_DEFAULT 130 
#define  EXCEPTION_STATE 129 
#define  EXCEPTION_STATE_IDENTITY 128 
 int EXC_MASK_VALID ; 
 int EXC_TYPES_COUNT ; 
 int FIRST_EXCEPTION ; 
 int /*<<< orphan*/  IP_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int MACH_EXCEPTION_CODES ; 
 TYPE_2__* THREAD_NULL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_8__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct label* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct label*) ; 
 scalar_t__ FUNC8 (TYPE_6__*,struct label*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

kern_return_t
FUNC11(
	thread_t		 		thread,
	exception_mask_t		exception_mask,
	ipc_port_t				new_port,
	exception_behavior_t	new_behavior,
	thread_state_flavor_t	new_flavor)
{
	ipc_port_t		old_port[EXC_TYPES_COUNT];
	boolean_t privileged = FUNC2()->sec_token.val[0] == 0;
	register int	i;

#if CONFIG_MACF
	struct label *new_label;
#endif
	
	if (thread == THREAD_NULL)
		return (KERN_INVALID_ARGUMENT);

	if (exception_mask & ~EXC_MASK_VALID)
		return (KERN_INVALID_ARGUMENT);

	if (FUNC0(new_port)) {
		switch (new_behavior & ~MACH_EXCEPTION_CODES) {

		case EXCEPTION_DEFAULT:
		case EXCEPTION_STATE:
		case EXCEPTION_STATE_IDENTITY:
			break;

		default:
			return (KERN_INVALID_ARGUMENT);
		}
	}

	/* 
	 * Check the validity of the thread_state_flavor by calling the
	 * VALID_THREAD_STATE_FLAVOR architecture dependent macro defined in
	 * osfmk/mach/ARCHITECTURE/thread_status.h
	 */
	if (new_flavor != 0 && !FUNC1(new_flavor))
		return (KERN_INVALID_ARGUMENT);

#if CONFIG_MACF
	new_label = mac_exc_create_label_for_current_proc();
#endif
	
	FUNC9(thread);

	if (!thread->active) {
		FUNC10(thread);

		return (KERN_FAILURE);
	}

	if (thread->exc_actions == NULL) {
		FUNC5(thread);
	}
	for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; ++i) {
		if ((exception_mask & (1 << i))
#if CONFIG_MACF
			&& mac_exc_update_action_label(&thread->exc_actions[i], new_label) == 0
#endif
			) {
			old_port[i] = thread->exc_actions[i].port;
			thread->exc_actions[i].port = FUNC3(new_port);
			thread->exc_actions[i].behavior = new_behavior;
			thread->exc_actions[i].flavor = new_flavor;
			thread->exc_actions[i].privileged = privileged;
		}
		else
			old_port[i] = IP_NULL;
	}

	FUNC10(thread);

#if CONFIG_MACF
	mac_exc_free_label(new_label);
#endif
	
	for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; ++i)
		if (FUNC0(old_port[i]))
			FUNC4(old_port[i]);

	if (FUNC0(new_port))		 /* consume send right */
		FUNC4(new_port);

	return (KERN_SUCCESS);
}