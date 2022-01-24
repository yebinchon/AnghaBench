#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int32_t ;
struct necp_client_parsed_parameters {int dummy; } ;
struct necp_client {int dummy; } ;
typedef  TYPE_1__* ifnet_t ;
struct TYPE_4__ {size_t if_agentcount; int /*<<< orphan*/  if_index; int /*<<< orphan*/ * if_agentids; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct necp_client*,struct necp_client_parsed_parameters const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct necp_client *client,
										const struct necp_client_parsed_parameters *parsed_parameters,
										ifnet_t ifp)
{
	if (ifp != NULL && ifp->if_agentids != NULL) {
		for (u_int32_t i = 0; i < ifp->if_agentcount; i++) {
			if (FUNC2(ifp->if_agentids[i])) {
				continue;
			}
			// Relies on the side effect that nexus agents that apply will create flows
			(void)FUNC1(client, parsed_parameters, &ifp->if_agentids[i], TRUE,
												  ifp->if_index, FUNC0(ifp));
		}
	}
}