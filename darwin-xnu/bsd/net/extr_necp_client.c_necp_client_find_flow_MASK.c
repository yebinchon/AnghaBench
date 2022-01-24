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
struct necp_client_flow_registration {int /*<<< orphan*/  registration_id; } ;
struct necp_client {int /*<<< orphan*/  flow_registrations; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct necp_client*) ; 
 struct necp_client_flow_registration* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct necp_client_flow_registration*) ; 
 struct necp_client_flow_registration* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _necp_client_flow_tree ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct necp_client_flow_registration *
FUNC5(struct necp_client *client, uuid_t flow_id)
{
	FUNC0(client);
	struct necp_client_flow_registration *flow = NULL;

	if (FUNC3(flow_id)) {
		struct necp_client_flow_registration find;
		FUNC4(find.registration_id, flow_id);
		flow = FUNC1(_necp_client_flow_tree, &client->flow_registrations, &find);
	} else {
		flow = FUNC2(&client->flow_registrations);
	}

	return (flow);
}