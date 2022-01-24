#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
typedef  size_t u_int32_t ;
struct TYPE_2__ {struct ifnet* ifp; } ;
struct ifnet {size_t if_agentcount; TYPE_1__ if_delegated; int /*<<< orphan*/ * if_agentids; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct ifnet *ifp, uuid_t *agent_uuid, bool check_delegates)
{
	struct ifnet *check_ifp = ifp;

	while (check_ifp != NULL) {
		FUNC1(check_ifp);
		if (check_ifp->if_agentids != NULL) {
			for (u_int32_t index = 0; index < check_ifp->if_agentcount; index++) {
				if (FUNC2(check_ifp->if_agentids[index], *agent_uuid) == 0) {
					FUNC0(check_ifp);
					return (TRUE);
				}
			}
		}
		FUNC0(check_ifp);

		if (!check_delegates) {
			break;
		}
		check_ifp = check_ifp->if_delegated.ifp;
	}
	return (FALSE);
}