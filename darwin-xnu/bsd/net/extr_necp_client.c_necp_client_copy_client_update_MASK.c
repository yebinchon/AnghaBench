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
struct necp_fd_data {int flags; scalar_t__ update_count; int /*<<< orphan*/  update_list; } ;
struct necp_client_update {scalar_t__ update_length; int /*<<< orphan*/  update; int /*<<< orphan*/ * client_id; } ;
struct necp_client_action_args {int client_id_len; scalar_t__ buffer_size; int /*<<< orphan*/  buffer; int /*<<< orphan*/  client_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct necp_client_update*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  M_NECP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct necp_fd_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct necp_fd_data*) ; 
 int NECP_OPEN_FLAG_PUSH_OBSERVER ; 
 struct necp_client_update* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct necp_client_update*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  chain ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct necp_fd_data *fd_data, struct necp_client_action_args *uap, int *retval)
{
	int error = 0;

	*retval = 0;

	if (!(fd_data->flags & NECP_OPEN_FLAG_PUSH_OBSERVER)) {
		FUNC2(LOG_ERR, "NECP fd is not observer, cannot copy client update");
		return (EINVAL);
	}

	if (uap->client_id_len != sizeof(uuid_t) || uap->client_id == 0) {
		FUNC2(LOG_ERR, "Client id invalid, cannot copy client update");
		return (EINVAL);
	}

	if (uap->buffer_size == 0 || uap->buffer == 0) {
		FUNC2(LOG_ERR, "Buffer invalid, cannot copy client update");
		return (EINVAL);
	}

	FUNC3(fd_data);
	struct necp_client_update *client_update = FUNC5(&fd_data->update_list);
	if (client_update != NULL) {
		FUNC6(&fd_data->update_list, client_update, chain);
		FUNC7(fd_data->update_count > 0);
		fd_data->update_count--;
	}
	FUNC4(fd_data);

	if (client_update != NULL) {
		error = FUNC8(client_update->client_id, uap->client_id, sizeof(uuid_t));
		if (error) {
			FUNC1(LOG_ERR, "Copy client update copyout client id error (%d)", error);
		} else {
			if (uap->buffer_size < client_update->update_length) {
				FUNC1(LOG_ERR, "Buffer size cannot hold update (%zu < %zu)", uap->buffer_size, client_update->update_length);
				error = EINVAL;
			} else {
				error = FUNC8(&client_update->update, uap->buffer, client_update->update_length);
				if (error) {
					FUNC1(LOG_ERR, "Copy client update copyout error (%d)", error);
				} else {
					*retval = client_update->update_length;
				}
			}
		}

		FUNC0(client_update, M_NECP);
		client_update = NULL;
	} else {
		error = ENOENT;
	}

	return (error);
}