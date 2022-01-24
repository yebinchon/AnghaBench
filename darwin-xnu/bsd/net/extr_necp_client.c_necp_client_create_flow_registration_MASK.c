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
struct necp_fd_data {int /*<<< orphan*/  flows; } ;
struct necp_client_flow_registration {int flow_result_read; struct necp_client* client; int /*<<< orphan*/  flow_list; int /*<<< orphan*/  registration_id; int /*<<< orphan*/  last_interface_details; } ;
struct necp_client {int /*<<< orphan*/  flow_registrations; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFSCOPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MCR_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (struct necp_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct necp_fd_data*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  NSTAT_IFNET_IS_UNKNOWN_TYPE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct necp_client_flow_registration*) ; 
 int /*<<< orphan*/  _necp_client_flow_global_tree ; 
 int /*<<< orphan*/  _necp_client_flow_tree ; 
 int /*<<< orphan*/  _necp_fd_flow_tree ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct necp_client_flow_registration* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct necp_client_flow_registration*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  necp_client_flow_global_tree ; 
 int /*<<< orphan*/  necp_flow_registration_cache ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct necp_client_flow_registration *
FUNC10(struct necp_fd_data *fd_data, struct necp_client *client)
{
	FUNC2(fd_data);
	FUNC1(client);

	struct necp_client_flow_registration *new_registration = FUNC7(necp_flow_registration_cache, MCR_SLEEP);
	if (new_registration == NULL) {
		return NULL;
	}

	FUNC8(new_registration, 0, sizeof(*new_registration));

	new_registration->last_interface_details = FUNC6(IFSCOPE_NONE, NSTAT_IFNET_IS_UNKNOWN_TYPE);

	FUNC9(new_registration->registration_id, true);
	FUNC0(&new_registration->flow_list);

	// Add registration to client list
	FUNC5(_necp_client_flow_tree, &client->flow_registrations, new_registration);

	// Add registration to fd list
	FUNC5(_necp_fd_flow_tree, &fd_data->flows, new_registration);

	// Add registration to global tree for lookup
	FUNC3();
	FUNC5(_necp_client_flow_global_tree, &necp_client_flow_global_tree, new_registration);
	FUNC4();

	new_registration->client = client;

	// Start out assuming there is nothing to read from the flow
	new_registration->flow_result_read = true;

	return new_registration;
}