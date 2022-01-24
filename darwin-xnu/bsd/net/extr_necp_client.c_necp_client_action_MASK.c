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
typedef  int u_int32_t ;
struct proc {int dummy; } ;
struct necp_fd_data {int dummy; } ;
struct necp_client_action_args {int action; int /*<<< orphan*/  necp_fd; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
#define  NECP_CLIENT_ACTION_ADD 140 
#define  NECP_CLIENT_ACTION_AGENT 139 
#define  NECP_CLIENT_ACTION_AGENT_USE 138 
#define  NECP_CLIENT_ACTION_COPY_AGENT 137 
#define  NECP_CLIENT_ACTION_COPY_CLIENT_UPDATE 136 
#define  NECP_CLIENT_ACTION_COPY_INTERFACE 135 
#define  NECP_CLIENT_ACTION_COPY_LIST 134 
#define  NECP_CLIENT_ACTION_COPY_PARAMETERS 133 
#define  NECP_CLIENT_ACTION_COPY_RESULT 132 
#define  NECP_CLIENT_ACTION_COPY_ROUTE_STATISTICS 131 
#define  NECP_CLIENT_ACTION_COPY_UPDATED_RESULT 130 
#define  NECP_CLIENT_ACTION_REMOVE 129 
#define  NECP_CLIENT_ACTION_UPDATE_CACHE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct proc*,struct necp_fd_data*,struct necp_client_action_args*,int*) ; 
 int FUNC3 (struct necp_fd_data*,struct necp_client_action_args*,int*) ; 
 int FUNC4 (struct necp_fd_data*,struct necp_client_action_args*,int*) ; 
 int FUNC5 (struct necp_fd_data*,struct necp_client_action_args*,int*) ; 
 int FUNC6 (struct necp_fd_data*,struct necp_client_action_args*,int*) ; 
 int FUNC7 (struct necp_fd_data*,struct necp_client_action_args*,int*) ; 
 int FUNC8 (struct necp_fd_data*,struct necp_client_action_args*,int*) ; 
 int FUNC9 (struct necp_fd_data*,struct necp_client_action_args*,int*) ; 
 int FUNC10 (struct necp_fd_data*,struct necp_client_action_args*,int*) ; 
 int FUNC11 (struct necp_fd_data*,struct necp_client_action_args*,int*) ; 
 int FUNC12 (struct necp_fd_data*,struct necp_client_action_args*,int*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct necp_fd_data**) ; 

int
FUNC14(struct proc *p, struct necp_client_action_args *uap, int *retval)
{
#pragma unused(p)
	int error = 0;
	int return_value = 0;
	struct necp_fd_data *fd_data = NULL;
	error = FUNC13(uap->necp_fd, &fd_data);
	if (error != 0) {
		FUNC0(LOG_ERR, "necp_client_action find fd error (%d)", error);
		return (error);
	}

	u_int32_t action = uap->action;
	switch (action) {
		case NECP_CLIENT_ACTION_ADD: {
			return_value = FUNC2(p, fd_data, uap, retval);
			break;
		}
		case NECP_CLIENT_ACTION_REMOVE: {
			return_value = FUNC11(fd_data, uap, retval);
			break;
		}
		case NECP_CLIENT_ACTION_COPY_PARAMETERS:
		case NECP_CLIENT_ACTION_COPY_RESULT:
		case NECP_CLIENT_ACTION_COPY_UPDATED_RESULT: {
			return_value = FUNC5(fd_data, uap, retval);
			break;
		}
		case NECP_CLIENT_ACTION_COPY_LIST: {
			return_value = FUNC10(fd_data, uap, retval);
			break;
		}
		case NECP_CLIENT_ACTION_AGENT: {
			return_value = FUNC3(fd_data, uap, retval);
			break;
		}
		case NECP_CLIENT_ACTION_COPY_AGENT: {
			return_value = FUNC6(fd_data, uap, retval);
			break;
		}
		case NECP_CLIENT_ACTION_AGENT_USE: {
			return_value = FUNC4(fd_data, uap, retval);
			break;
		}
		case NECP_CLIENT_ACTION_COPY_INTERFACE: {
			return_value = FUNC8(fd_data, uap, retval);
			break;
		}
		case NECP_CLIENT_ACTION_COPY_ROUTE_STATISTICS: {
			return_value = FUNC9(fd_data, uap, retval);
			break;
		}
		case NECP_CLIENT_ACTION_UPDATE_CACHE: {
			return_value = FUNC12(fd_data, uap, retval);
			break;
		}
		case NECP_CLIENT_ACTION_COPY_CLIENT_UPDATE: {
			return_value = FUNC7(fd_data, uap, retval);
			break;
		}
		default: {
			FUNC0(LOG_ERR, "necp_client_action unknown action (%u)", action);
			return_value = EINVAL;
			break;
		}
	}

	FUNC1(uap->necp_fd);

	return (return_value);
}