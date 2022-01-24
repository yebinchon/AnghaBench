#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_t ;
struct image_params {int /*<<< orphan*/  ip_new_thread; int /*<<< orphan*/  ip_vfs_context; TYPE_2__* ip_px_spa; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/ * ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
typedef  scalar_t__ errno_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_3__ {int port_type; int /*<<< orphan*/  new_port; int /*<<< orphan*/  flavor; int /*<<< orphan*/  behavior; int /*<<< orphan*/  mask; int /*<<< orphan*/  which; } ;
typedef  TYPE_1__ _ps_port_action_t ;
typedef  TYPE_2__* _posix_spawn_port_actions_t ;
struct TYPE_4__ {int pspa_count; TYPE_1__* pspa_actions; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_COPY_SEND ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
#define  PSPA_AU_SESSION 131 
#define  PSPA_EXCEPTION 130 
#define  PSPA_IMP_WATCHPORTS 129 
#define  PSPA_SPECIAL 128 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mach_port_name_t ; 
 int /*<<< orphan*/  spawn__port__failure ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static errno_t
FUNC13(struct image_params *imgp, boolean_t * portwatch_present,
                         ipc_port_t * portwatch_ports)
{
	_posix_spawn_port_actions_t pacts = imgp->ip_px_spa;
#if CONFIG_AUDIT
	proc_t p = vfs_context_proc(imgp->ip_vfs_context);
#endif
	_ps_port_action_t *act = NULL;
	task_t task = FUNC7(imgp->ip_new_thread);
	ipc_port_t port = NULL;
	errno_t ret = 0;
	int i;
	kern_return_t kr;

	*portwatch_present = FALSE;

	for (i = 0; i < pacts->pspa_count; i++) {
		act = &pacts->pspa_actions[i];

		if (FUNC3(act->new_port)) {
			kr = FUNC8(FUNC6(FUNC5()),
			                       act->new_port, MACH_MSG_TYPE_COPY_SEND,
			                       (ipc_object_t *) &port);

			if (kr != KERN_SUCCESS) {
				ret = EINVAL;
				goto done;
			}
		} else {
			/* it's NULL or DEAD */
			port = FUNC0(act->new_port);
		}

		switch (act->port_type) {
		case PSPA_SPECIAL:
			kr = FUNC11(task, act->which, port);

			if (kr != KERN_SUCCESS)
				ret = EINVAL;
			break;

		case PSPA_EXCEPTION:
			kr = FUNC10(task, act->mask, port,
			                              act->behavior, act->flavor);
			if (kr != KERN_SUCCESS)
				ret = EINVAL;
			break;
#if CONFIG_AUDIT
		case PSPA_AU_SESSION:
			ret = audit_session_spawnjoin(p, task, port);
			if (ret) {
				/* audit_session_spawnjoin() has already dropped the reference in case of error. */
				goto done;
			}

			break;
#endif
		case PSPA_IMP_WATCHPORTS:
			if (portwatch_ports != NULL && FUNC2(port)) {
				*portwatch_present = TRUE;
				/* hold on to this till end of spawn */
				portwatch_ports[i] = port;
			} else {
				FUNC9(port);
			}

			break;
		default:
			ret = EINVAL;
			break;
		}

		if (ret) {
			/* action failed, so release port resources */
			FUNC9(port);
			break;
		}
	}

done:
	if (0 != ret)
		FUNC1(spawn__port__failure, mach_port_name_t, act->new_port);
	return (ret);
}