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
typedef  size_t uint32_t ;
struct ifnet {size_t if_agentcount; int /*<<< orphan*/ * if_agentids; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

boolean_t
FUNC4(struct ifnet *ifp, uuid_t find_agent_uuid)
{
	boolean_t found = FALSE;

	if (!ifp || FUNC3(find_agent_uuid))
		return FALSE;

	FUNC1(ifp);

	if (ifp->if_agentids != NULL) {
		for (uint32_t index = 0; index < ifp->if_agentcount; index++) {
			if (FUNC2(ifp->if_agentids[index], find_agent_uuid) == 0) {
				found = TRUE;
				break;
			}
		}
	}

	FUNC0(ifp);

	return found;
}