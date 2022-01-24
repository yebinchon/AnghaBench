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
typedef  size_t u_int32_t ;
struct ifnet {size_t if_agentcount; int /*<<< orphan*/ * if_agentids; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ifnet *ifp, uuid_t remove_agent_uuid)
{
	u_int32_t index = 0;
	bool removed_agent_id = FALSE;

	if (ifp->if_agentids != NULL) {
		for (index = 0; index < ifp->if_agentcount; index++) {
			uuid_t *netagent_uuid = &(ifp->if_agentids[index]);
			if (FUNC2(*netagent_uuid,
			    remove_agent_uuid) == 0) {
				FUNC1(*netagent_uuid);
				removed_agent_id = TRUE;
				break;
			}
		}
	}
	if (removed_agent_id)
		FUNC0(remove_agent_uuid);

	return (0);
}