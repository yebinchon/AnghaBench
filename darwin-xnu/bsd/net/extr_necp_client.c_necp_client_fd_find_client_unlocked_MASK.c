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
struct necp_fd_data {int /*<<< orphan*/  clients; int /*<<< orphan*/  flows; } ;
struct necp_client_flow_registration {int /*<<< orphan*/  client_id; struct necp_client_flow_registration* client; int /*<<< orphan*/  registration_id; } ;
struct necp_client {int /*<<< orphan*/  client_id; struct necp_client* client; int /*<<< orphan*/  registration_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct necp_fd_data*) ; 
 struct necp_client_flow_registration* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct necp_client_flow_registration*) ; 
 int /*<<< orphan*/  _necp_client_tree ; 
 int /*<<< orphan*/  _necp_fd_flow_tree ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct necp_client *
FUNC4(struct necp_fd_data *client_fd, uuid_t client_id)
{
	FUNC0(client_fd);
	struct necp_client *client = NULL;

	if (FUNC2(client_id)) {
		struct necp_client_flow_registration find;
		FUNC3(find.registration_id, client_id);
		struct necp_client_flow_registration *flow = FUNC1(_necp_fd_flow_tree, &client_fd->flows, &find);
		if (flow != NULL) {
			client = flow->client;
		}
	} else {
		struct necp_client find;
		FUNC3(find.client_id, client_id);
		client = FUNC1(_necp_client_tree, &client_fd->clients, &find);
	}

	return (client);
}