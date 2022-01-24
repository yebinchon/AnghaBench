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
 int ENOMEM ; 
 int FALSE ; 
 scalar_t__ IF_AGENT_INCREMENT ; 
 scalar_t__ IF_MAXAGENTS ; 
 size_t FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  M_NETAGENT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp, uuid_t new_agent_uuid)
{
	uuid_t *first_empty_slot = NULL;
	u_int32_t index = 0;
	bool already_added = FALSE;

	if (ifp->if_agentids != NULL) {
		for (index = 0; index < ifp->if_agentcount; index++) {
			uuid_t *netagent_uuid = &(ifp->if_agentids[index]);
			if (FUNC3(*netagent_uuid, new_agent_uuid) == 0) {
				/* Already present, ignore */
				already_added = TRUE;
				break;
			}
			if (first_empty_slot == NULL &&
				FUNC5(*netagent_uuid)) {
				first_empty_slot = netagent_uuid;
			}
		}
	}
	if (already_added) {
		/* Already added agent, don't return an error */
		return (0);
	}
	if (first_empty_slot == NULL) {
		if (ifp->if_agentcount >= IF_MAXAGENTS) {
			/* No room for another netagent UUID, bail */
			return (ENOMEM);
		} else {
			/* Calculate new array size */
			u_int32_t new_agent_count =
			FUNC0(ifp->if_agentcount + IF_AGENT_INCREMENT,
			    IF_MAXAGENTS);

			/* Reallocate array */
			uuid_t *new_agent_array = FUNC1(ifp->if_agentids,
			    sizeof(uuid_t) * new_agent_count, M_NETAGENT,
			    M_WAITOK | M_ZERO);
			if (new_agent_array == NULL) {
				return (ENOMEM);
			}

			/* Save new array */
			ifp->if_agentids = new_agent_array;

			/* Set first empty slot */
			first_empty_slot =
			    &(ifp->if_agentids[ifp->if_agentcount]);

			/* Save new array length */
			ifp->if_agentcount = new_agent_count;
		}
	}
	FUNC4(*first_empty_slot, new_agent_uuid);
	FUNC2(new_agent_uuid);
	return (0);
}