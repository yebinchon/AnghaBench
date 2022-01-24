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
typedef  struct necp_agent_use_parameters* uuid_t ;
struct necp_fd_data {int dummy; } ;
struct necp_client_action_args {scalar_t__ client_id; int client_id_len; int buffer_size; scalar_t__ buffer; } ;
struct necp_client {int dummy; } ;
struct necp_agent_use_parameters {int /*<<< orphan*/  out_use_count; int /*<<< orphan*/  agent_uuid; } ;
typedef  int /*<<< orphan*/  parameters ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct necp_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct necp_fd_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct necp_fd_data*) ; 
 int FUNC4 (scalar_t__,struct necp_agent_use_parameters*,int) ; 
 int FUNC5 (struct necp_agent_use_parameters*,scalar_t__,int) ; 
 struct necp_client* FUNC6 (struct necp_fd_data*,struct necp_agent_use_parameters*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct necp_fd_data *fd_data, struct necp_client_action_args *uap, int *retval)
{
	int error = 0;
	struct necp_client *client = NULL;
	uuid_t client_id;
	struct necp_agent_use_parameters parameters;

	if (uap->client_id == 0 || uap->client_id_len != sizeof(uuid_t) ||
		uap->buffer_size != sizeof(parameters) || uap->buffer == 0) {
		error = EINVAL;
		goto done;
	}

	error = FUNC4(uap->client_id, client_id, sizeof(uuid_t));
	if (error) {
		FUNC0(LOG_ERR, "Copyin client_id error (%d)", error);
		goto done;
	}

	error = FUNC4(uap->buffer, &parameters, uap->buffer_size);
	if (error) {
		FUNC0(LOG_ERR, "Parameters copyin error (%d)", error);
		goto done;
	}

	FUNC2(fd_data);
	client = FUNC6(fd_data, client_id);
	if (client != NULL) {
		error = FUNC7(parameters.agent_uuid, &parameters.out_use_count);
		FUNC1(client);
	} else {
		error = ENOENT;
	}

	FUNC3(fd_data);

	if (error == 0) {
		error = FUNC5(&parameters, uap->buffer, uap->buffer_size);
		if (error) {
			FUNC0(LOG_ERR, "Parameters copyout error (%d)", error);
			goto done;
		}
	}

done:
	*retval = error;

	return (error);
}