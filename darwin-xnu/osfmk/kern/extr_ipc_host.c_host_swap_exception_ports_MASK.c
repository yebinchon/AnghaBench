#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ thread_state_flavor_t ;
typedef  scalar_t__* thread_state_flavor_array_t ;
struct label {int dummy; } ;
typedef  unsigned int mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  TYPE_1__* host_priv_t ;
typedef  scalar_t__* exception_port_array_t ;
typedef  int exception_mask_t ;
typedef  int* exception_mask_array_t ;
typedef  int exception_behavior_t ;
typedef  int* exception_behavior_array_t ;
struct TYPE_9__ {scalar_t__ port; int behavior; scalar_t__ flavor; int /*<<< orphan*/ * label; } ;
struct TYPE_8__ {TYPE_2__* exc_actions; } ;

/* Variables and functions */
#define  EXCEPTION_DEFAULT 130 
#define  EXCEPTION_STATE 129 
#define  EXCEPTION_STATE_IDENTITY 128 
 int EXC_MASK_VALID ; 
 int EXC_TYPES_COUNT ; 
 int FIRST_EXCEPTION ; 
 TYPE_1__* HOST_PRIV_NULL ; 
 scalar_t__ IP_NULL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_NO_ACCESS ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct label*) ; 
 struct label* FUNC9 () ; 
 struct label* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct label*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,struct label*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int) ; 

kern_return_t
FUNC14(
	host_priv_t			host_priv,
	exception_mask_t		exception_mask,
	ipc_port_t			new_port,
	exception_behavior_t		new_behavior,
	thread_state_flavor_t		new_flavor,
	exception_mask_array_t		masks,
	mach_msg_type_number_t		* CountCnt,
	exception_port_array_t		ports,
	exception_behavior_array_t      behaviors,
	thread_state_flavor_array_t     flavors		)
{
	unsigned int	i,
			j,
			count;
	ipc_port_t	old_port[EXC_TYPES_COUNT];

#if CONFIG_MACF
	struct label *deferred_labels[EXC_TYPES_COUNT];
	struct label *new_label;
#endif	

	if (host_priv == HOST_PRIV_NULL)
		return KERN_INVALID_ARGUMENT;

	if (exception_mask & ~EXC_MASK_VALID) {
		return KERN_INVALID_ARGUMENT;
	}

	if (FUNC0(new_port)) {
		switch (new_behavior) {
		case EXCEPTION_DEFAULT:
		case EXCEPTION_STATE:
		case EXCEPTION_STATE_IDENTITY:
			break;
		default:
			return KERN_INVALID_ARGUMENT;
		}
	}

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
#endif /* CONFIG_MACF */

	FUNC4(host_priv);

	FUNC2(EXC_TYPES_COUNT > FIRST_EXCEPTION);
	for (count=0, i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT && count < *CountCnt; i++) {
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
			for (j = 0; j < count; j++) {
/*
 *				search for an identical entry, if found
 *				set corresponding mask for this exception.
 */
				if (host_priv->exc_actions[i].port == ports[j] &&
				  host_priv->exc_actions[i].behavior == behaviors[j]
				  && host_priv->exc_actions[i].flavor == flavors[j])
				{
					masks[j] |= (1 << i);
					break;
				}
			}/* for */
			if (j == count) {
				masks[j] = (1 << i);
				ports[j] =
				FUNC6(host_priv->exc_actions[i].port);
				behaviors[j] = host_priv->exc_actions[i].behavior;
				flavors[j] = host_priv->exc_actions[i].flavor;
				count++;
			}
			old_port[i] = host_priv->exc_actions[i].port;
			host_priv->exc_actions[i].port =
				FUNC6(new_port);
			host_priv->exc_actions[i].behavior = new_behavior;
			host_priv->exc_actions[i].flavor = new_flavor;
		} else {
			old_port[i] = IP_NULL;
		}
	}/* for */
	FUNC5(host_priv);

#if CONFIG_MACF
	mac_exc_free_label(new_label);
#endif
	
	/*
	 * Consume send rights without any lock held.
	 */
	while (--i >= FIRST_EXCEPTION) {
		if (FUNC0(old_port[i]))
			FUNC7(old_port[i]);
#if CONFIG_MACF
		if (deferred_labels[i] != NULL) {
			mac_exc_free_label(deferred_labels[i]); // Label unused.
		}
#endif
	}

	if (FUNC0(new_port))		 /* consume send right */
		FUNC7(new_port);
	*CountCnt = count;

	return KERN_SUCCESS;
}