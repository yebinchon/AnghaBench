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
struct necp_client_flow_registration {int /*<<< orphan*/  client_id; struct necp_client_flow_registration* client; int /*<<< orphan*/  registration_id; } ;
struct necp_client {int /*<<< orphan*/  client_id; struct necp_client* client; int /*<<< orphan*/  registration_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct necp_client_flow_registration*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct necp_client_flow_registration* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct necp_client_flow_registration*) ; 
 int /*<<< orphan*/  _necp_client_flow_global_tree ; 
 int /*<<< orphan*/  _necp_client_global_tree ; 
 int /*<<< orphan*/  necp_client_flow_global_tree ; 
 int /*<<< orphan*/  necp_client_global_tree ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct necp_client *
FUNC7(uuid_t client_id)
{
	FUNC1();

	struct necp_client *client = NULL;

	if (FUNC5(client_id)) {
		FUNC2();
		struct necp_client_flow_registration find;
		FUNC6(find.registration_id, client_id);
		struct necp_client_flow_registration *flow = FUNC4(_necp_client_flow_global_tree, &necp_client_flow_global_tree, &find);
		if (flow != NULL) {
			client = flow->client;
		}
		FUNC3();
	} else {
		struct necp_client find;
		FUNC6(find.client_id, client_id);
		client = FUNC4(_necp_client_global_tree, &necp_client_global_tree, &find);
	}

	if (client != NULL) {
		FUNC0(client);
	}

	return (client);
}