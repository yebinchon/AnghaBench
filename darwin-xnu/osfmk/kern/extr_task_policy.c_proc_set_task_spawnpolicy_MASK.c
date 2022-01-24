#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* task_t ;
struct task_pend_token {int tpt_update_live_donor; } ;
typedef  int /*<<< orphan*/ * ipc_port_t ;
struct TYPE_18__ {int trp_tal_enabled; int trp_apptype; int trp_role; int trp_qos_clamp; } ;
struct TYPE_19__ {TYPE_1__ requested_policy; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IMP_TASK_APPTYPE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
#define  TASK_APPTYPE_APP_DEFAULT 134 
#define  TASK_APPTYPE_APP_TAL 133 
#define  TASK_APPTYPE_DAEMON_ADAPTIVE 132 
#define  TASK_APPTYPE_DAEMON_BACKGROUND 131 
#define  TASK_APPTYPE_DAEMON_INTERACTIVE 130 
#define  TASK_APPTYPE_DAEMON_STANDARD 129 
#define  TASK_APPTYPE_NONE 128 
 int TASK_FOREGROUND_APPLICATION ; 
 int TASK_UNSPECIFIED ; 
 int THREAD_QOS_UNSPECIFIED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  ipc_importance_interactive_receiver ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,struct task_pend_token*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

void
FUNC16(task_t task, int apptype, int qos_clamp, int role,
                          ipc_port_t * portwatch_ports, int portwatch_count)
{
	struct task_pend_token pend_token = {};

	FUNC1(KDEBUG_TRACE,
				  (FUNC0(IMP_TASK_APPTYPE, apptype)) | DBG_FUNC_START,
				  FUNC10(task), FUNC14(task), FUNC15(task),
				  apptype, 0);

	switch (apptype) {
		case TASK_APPTYPE_APP_TAL:
		case TASK_APPTYPE_APP_DEFAULT:
			/* Apps become donors via the 'live-donor' flag instead of the static donor flag */
			FUNC5(task, FALSE);
			FUNC6(task, TRUE);
			FUNC7(task, FALSE);
#if CONFIG_EMBEDDED
			task_importance_mark_denap_receiver(task, FALSE);
#else
			/* Apps are de-nap recievers on desktop for suppression behaviors */
			FUNC4(task, TRUE);
#endif /* CONFIG_EMBEDDED */
			break;

		case TASK_APPTYPE_DAEMON_INTERACTIVE:
			FUNC5(task, TRUE);
			FUNC6(task, FALSE);

			/* 
			 * A boot arg controls whether interactive daemons are importance receivers.
			 * Normally, they are not.  But for testing their behavior as an adaptive
			 * daemon, the boot-arg can be set.
			 *
			 * TODO: remove this when the interactive daemon audit period is over.
			 */
			FUNC7(task, /* FALSE */ ipc_importance_interactive_receiver);
			FUNC4(task, FALSE);
			break;

		case TASK_APPTYPE_DAEMON_STANDARD:
			FUNC5(task, TRUE);
			FUNC6(task, FALSE);
			FUNC7(task, FALSE);
			FUNC4(task, FALSE);
			break;

		case TASK_APPTYPE_DAEMON_ADAPTIVE:
			FUNC5(task, FALSE);
			FUNC6(task, FALSE);
			FUNC7(task, TRUE);
			FUNC4(task, FALSE);
			break;

		case TASK_APPTYPE_DAEMON_BACKGROUND:
			FUNC5(task, FALSE);
			FUNC6(task, FALSE);
			FUNC7(task, FALSE);
			FUNC4(task, FALSE);
			break;

		case TASK_APPTYPE_NONE:
			break;
	}

	if (portwatch_ports != NULL && apptype == TASK_APPTYPE_DAEMON_ADAPTIVE) {
		int portwatch_boosts = 0;

		for (int i = 0; i < portwatch_count; i++) {
			ipc_port_t port = NULL;

			if ((port = portwatch_ports[i]) != NULL) {
				int boost = 0;
				FUNC2(task, port, &boost);
				portwatch_boosts += boost;
			}
		}

		if (portwatch_boosts > 0) {
			FUNC3(task, portwatch_boosts);
		}
	}

	FUNC9(task);

	if (apptype == TASK_APPTYPE_APP_TAL) {
		/* TAL starts off enabled by default */
		task->requested_policy.trp_tal_enabled = 1;
	}

	if (apptype != TASK_APPTYPE_NONE) {
		task->requested_policy.trp_apptype = apptype;
	}

#if CONFIG_EMBEDDED
	/* Remove this after launchd starts setting it properly */
	if (apptype == TASK_APPTYPE_APP_DEFAULT && role == TASK_UNSPECIFIED) {
		task->requested_policy.trp_role = TASK_FOREGROUND_APPLICATION;
	} else
#endif
	if (role != TASK_UNSPECIFIED) {
		task->requested_policy.trp_role = role;
	}

	if (qos_clamp != THREAD_QOS_UNSPECIFIED) {
		task->requested_policy.trp_qos_clamp = qos_clamp;
	}

	FUNC12(task, &pend_token);

	FUNC13(task);

	/* Ensure the donor bit is updated to be in sync with the new live donor status */
	pend_token.tpt_update_live_donor = 1;

	FUNC11(task, &pend_token);

	FUNC1(KDEBUG_TRACE,
				  (FUNC0(IMP_TASK_APPTYPE, apptype)) | DBG_FUNC_END,
				  FUNC10(task), FUNC14(task), FUNC15(task),
				  FUNC8(task), 0);
}