#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int u_int32_t ;
struct proc {int dummy; } ;
struct necp_session_action_args {int action; int /*<<< orphan*/  necp_fd; } ;
struct necp_session {int /*<<< orphan*/  proc_pid; int /*<<< orphan*/  proc_uuid; scalar_t__ proc_locked; } ;
typedef  int /*<<< orphan*/  proc_uuid ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
#define  NECP_SESSION_ACTION_LOCK_SESSION_TO_PROC 138 
#define  NECP_SESSION_ACTION_POLICY_ADD 137 
#define  NECP_SESSION_ACTION_POLICY_APPLY_ALL 136 
#define  NECP_SESSION_ACTION_POLICY_DELETE 135 
#define  NECP_SESSION_ACTION_POLICY_DELETE_ALL 134 
#define  NECP_SESSION_ACTION_POLICY_DUMP_ALL 133 
#define  NECP_SESSION_ACTION_POLICY_GET 132 
#define  NECP_SESSION_ACTION_POLICY_LIST_ALL 131 
#define  NECP_SESSION_ACTION_REGISTER_SERVICE 130 
#define  NECP_SESSION_ACTION_SET_SESSION_PRIORITY 129 
#define  NECP_SESSION_ACTION_UNREGISTER_SERVICE 128 
 int /*<<< orphan*/  FUNC1 (struct necp_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct necp_session*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct necp_session*,struct necp_session_action_args*,int*) ; 
 int FUNC6 (struct necp_session*,struct necp_session_action_args*,int*) ; 
 int FUNC7 (struct necp_session*,struct necp_session_action_args*,int*) ; 
 int FUNC8 (struct necp_session*,struct necp_session_action_args*,int*) ; 
 int FUNC9 (struct necp_session*,struct necp_session_action_args*,int*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct necp_session**) ; 
 int FUNC11 (struct necp_session*,struct necp_session_action_args*,int*) ; 
 int FUNC12 (struct necp_session*,struct necp_session_action_args*,int*) ; 
 int FUNC13 (struct necp_session*,struct necp_session_action_args*,int*) ; 
 int FUNC14 (struct necp_session*,struct necp_session_action_args*,int*) ; 
 int FUNC15 (struct necp_session*,struct necp_session_action_args*,int*) ; 
 int FUNC16 (struct necp_session*,struct necp_session_action_args*,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC20(struct proc *p, struct necp_session_action_args *uap, int *retval)
{
#pragma unused(p)
	int error = 0;
	int return_value = 0;
	struct necp_session *session = NULL;
	error = FUNC10(uap->necp_fd, &session);
	if (error != 0) {
		FUNC0(LOG_ERR, "necp_session_action find fd error (%d)", error);
		return (error);
	}

	FUNC1(session);

	if (session->proc_locked) {
		// Verify that the calling process is allowed to do actions
		uuid_t proc_uuid;
		FUNC17(FUNC3(), proc_uuid, sizeof(proc_uuid));
		if (FUNC19(proc_uuid, session->proc_uuid) != 0) {
			error = EPERM;
			goto done;
		}
	} else {
		// If not locked, update the proc_uuid and proc_pid of the session
		FUNC17(FUNC3(), session->proc_uuid, sizeof(session->proc_uuid));
		session->proc_pid = FUNC18(FUNC3());
	}

	u_int32_t action = uap->action;
	switch (action) {
		case NECP_SESSION_ACTION_POLICY_ADD: {
			return_value = FUNC5(session, uap, retval);
			break;
		}
		case NECP_SESSION_ACTION_POLICY_GET: {
			return_value = FUNC11(session, uap, retval);
			break;
		}
		case NECP_SESSION_ACTION_POLICY_DELETE:  {
			return_value = FUNC8(session, uap, retval);
			break;
		}
		case NECP_SESSION_ACTION_POLICY_APPLY_ALL: {
			return_value = FUNC6(session, uap, retval);
			break;
		}
		case NECP_SESSION_ACTION_POLICY_LIST_ALL: {
			return_value = FUNC12(session, uap, retval);
			break;
		}
		case NECP_SESSION_ACTION_POLICY_DELETE_ALL: {
			return_value = FUNC7(session, uap, retval);
			break;
		}
		case NECP_SESSION_ACTION_SET_SESSION_PRIORITY: {
			return_value = FUNC15(session, uap, retval);
			break;
		}
		case NECP_SESSION_ACTION_LOCK_SESSION_TO_PROC: {
			return_value = FUNC13(session, uap, retval);
			break;
		}
		case NECP_SESSION_ACTION_REGISTER_SERVICE: {
			return_value = FUNC14(session, uap, retval);
			break;
		}
		case NECP_SESSION_ACTION_UNREGISTER_SERVICE: {
			return_value = FUNC16(session, uap, retval);
			break;
		}
		case NECP_SESSION_ACTION_POLICY_DUMP_ALL: {
			return_value = FUNC9(session, uap, retval);
			break;
		}
		default: {
			FUNC0(LOG_ERR, "necp_session_action unknown action (%u)", action);
			return_value = EINVAL;
			break;
		}
	}

done:
	FUNC2(session);
	FUNC4(uap->necp_fd);

	return (return_value);
}