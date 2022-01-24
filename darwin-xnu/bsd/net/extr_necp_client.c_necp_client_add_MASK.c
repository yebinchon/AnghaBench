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
struct proc {int dummy; } ;
struct necp_fd_data {int flags; int /*<<< orphan*/  clients; int /*<<< orphan*/  proc_pid; } ;
struct necp_client_action_args {int client_id_len; scalar_t__ buffer; int /*<<< orphan*/  client_id; int /*<<< orphan*/  buffer_size; } ;
struct necp_client {int platform_binary; int /*<<< orphan*/  client_id; int /*<<< orphan*/  flow_registrations; int /*<<< orphan*/  assertion_list; void* agent_handle; int /*<<< orphan*/  proc_pid; int /*<<< orphan*/  parameters_length; int /*<<< orphan*/  route_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  parameters; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct necp_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  M_NECP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct necp_client*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct necp_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct necp_fd_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct necp_fd_data*) ; 
 int /*<<< orphan*/  NECP_MAX_CLIENT_PARAMETERS_SIZE ; 
 int NECP_OPEN_FLAG_PUSH_OBSERVER ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct necp_client*) ; 
 struct necp_client* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  _necp_client_global_tree ; 
 int /*<<< orphan*/  _necp_client_tree ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (struct proc*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  necp_client_count ; 
 int /*<<< orphan*/  necp_client_global_tree ; 
 int /*<<< orphan*/  FUNC19 (struct necp_client*) ; 
 int /*<<< orphan*/  FUNC20 (struct necp_client*) ; 
 int /*<<< orphan*/  necp_fd_mtx_attr ; 
 int /*<<< orphan*/  necp_fd_mtx_grp ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct necp_fd_data*,struct necp_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC23(struct proc *p, struct necp_fd_data *fd_data, struct necp_client_action_args *uap, int *retval)
{
	int error = 0;
	struct necp_client *client = NULL;

	if (fd_data->flags & NECP_OPEN_FLAG_PUSH_OBSERVER) {
		FUNC3(LOG_ERR, "NECP client observers with push enabled may not add their own clients");
		return (EINVAL);
	}

	if (uap->client_id == 0 || uap->client_id_len != sizeof(uuid_t) ||
		uap->buffer_size == 0 || uap->buffer_size > NECP_MAX_CLIENT_PARAMETERS_SIZE || uap->buffer == 0) {
		return (EINVAL);
	}

	if ((client = FUNC13(sizeof(struct necp_client) + uap->buffer_size, M_NECP,
						  M_WAITOK | M_ZERO)) == NULL) {
		error = ENOMEM;
		goto done;
	}

	error = FUNC14(uap->buffer, client->parameters, uap->buffer_size);
	if (error) {
		FUNC2(LOG_ERR, "necp_client_add parameters copyin error (%d)", error);
		goto done;
	}

	FUNC18(&client->lock, necp_fd_mtx_grp, necp_fd_mtx_attr);
	FUNC18(&client->route_lock, necp_fd_mtx_grp, necp_fd_mtx_attr);
	FUNC19(client); // Hold our reference until close

	client->parameters_length = uap->buffer_size;
	client->proc_pid = fd_data->proc_pid; // Save off proc pid in case the client will persist past fd
	client->agent_handle = (void *)fd_data;
	client->platform_binary = ((FUNC16(p) == 0) ? 0 : 1);

	FUNC21(client->client_id, false);
	FUNC1(&client->assertion_list);
	FUNC11(&client->flow_registrations);

	error = FUNC15(client->client_id, uap->client_id, sizeof(uuid_t));
	if (error) {
		FUNC2(LOG_ERR, "necp_client_add client_id copyout error (%d)", error);
		goto done;
	}

	FUNC20(client);

	FUNC8(fd_data);
	FUNC12(_necp_client_tree, &fd_data->clients, client);
	FUNC10(&necp_client_count);
	FUNC5();
	FUNC12(_necp_client_global_tree, &necp_client_global_tree, client);
	FUNC6();

	// Prime the client result
	FUNC4(client);
	(void)FUNC22(FUNC17(), fd_data, client, NULL);
	FUNC7(client);
	FUNC9(fd_data);
done:
	if (error != 0) {
		if (client != NULL) {
			FUNC0(client, M_NECP);
			client = NULL;
		}
	}
	*retval = error;

	return (error);
}