#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ thread_state_flavor_t ;
struct label {int dummy; } ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  TYPE_1__* host_priv_t ;
typedef  int exception_mask_t ;
typedef  int exception_behavior_t ;
struct TYPE_10__ {int behavior; scalar_t__ flavor; int /*<<< orphan*/  port; int /*<<< orphan*/ * label; } ;
struct TYPE_9__ {TYPE_3__* exc_actions; } ;

/* Variables and functions */
#define  EXCEPTION_DEFAULT 130 
#define  EXCEPTION_STATE 129 
#define  EXCEPTION_STATE_IDENTITY 128 
 int EXC_MASK_VALID ; 
 int EXC_TYPES_COUNT ; 
 int FIRST_EXCEPTION ; 
 TYPE_1__* HOST_PRIV_NULL ; 
 int /*<<< orphan*/  IP_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_NO_ACCESS ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int MACH_EXCEPTION_CODES ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct label*) ; 
 struct label* FUNC9 () ; 
 struct label* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct label*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,struct label*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ realhost ; 

kern_return_t
FUNC14(
	host_priv_t			host_priv,
	exception_mask_t		exception_mask,
	ipc_port_t			new_port,
	exception_behavior_t		new_behavior,
	thread_state_flavor_t		new_flavor)
{
	int	i;
	ipc_port_t	old_port[EXC_TYPES_COUNT];

#if CONFIG_MACF
	struct label *deferred_labels[EXC_TYPES_COUNT];
	struct label *new_label;
#endif	

	if (host_priv == HOST_PRIV_NULL) {
		return KERN_INVALID_ARGUMENT;
	}

	if (exception_mask & ~EXC_MASK_VALID) {
		return KERN_INVALID_ARGUMENT;
	}

	if (FUNC0(new_port)) {
		switch (new_behavior & ~MACH_EXCEPTION_CODES) {
		case EXCEPTION_DEFAULT:
		case EXCEPTION_STATE:
		case EXCEPTION_STATE_IDENTITY:
			break;
		default:
			return KERN_INVALID_ARGUMENT;
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
	if (mac_task_check_set_host_exception_ports(current_task(), exception_mask) != 0)
		return KERN_NO_ACCESS;

	new_label = mac_exc_create_label_for_current_proc();

	for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
		if (host_priv->exc_actions[i].label == NULL) {
			deferred_labels[i] = mac_exc_create_label();
		} else {
			deferred_labels[i] = NULL;
		}
	}
#endif

	FUNC2(host_priv == &realhost);

	FUNC4(host_priv);

	for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
#if CONFIG_MACF
		if (host_priv->exc_actions[i].label == NULL) {
			// Lazy initialization (see ipc_port_init).
			mac_exc_associate_action_label(&host_priv->exc_actions[i], deferred_labels[i]);
			deferred_labels[i] = NULL; // Label is used, do not free.
		}
#endif

		if ((exception_mask & (1 << i))
#if CONFIG_MACF
			&& mac_exc_update_action_label(&host_priv->exc_actions[i], new_label) == 0
#endif
			) {
			old_port[i] = host_priv->exc_actions[i].port;

			host_priv->exc_actions[i].port =
				FUNC6(new_port);
			host_priv->exc_actions[i].behavior = new_behavior;
			host_priv->exc_actions[i].flavor = new_flavor;
		} else {
			old_port[i] = IP_NULL;
		}
	}/* for */

	/*
	 * Consume send rights without any lock held.
	 */
	FUNC5(host_priv);

#if CONFIG_MACF
	mac_exc_free_label(new_label);
#endif
	
	for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; i++) {
		if (FUNC0(old_port[i]))
			FUNC7(old_port[i]);
#if CONFIG_MACF
		if (deferred_labels[i] != NULL) {
			/* Deferred label went unused: Another thread has completed the lazy initialization. */
			mac_exc_free_label(deferred_labels[i]);
		}
#endif
	}
	if (FUNC0(new_port))		 /* consume send right */
		FUNC7(new_port);

        return KERN_SUCCESS;
}