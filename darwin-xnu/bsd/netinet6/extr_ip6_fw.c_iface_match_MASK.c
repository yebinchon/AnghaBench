#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int unit; int /*<<< orphan*/  name; } ;
union ip6_fw_if {int /*<<< orphan*/  fu_via_ip6; TYPE_1__ fu_via_if; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_6__ {struct ifaddr* tqh_first; } ;
struct ifnet {int if_unit; TYPE_2__ if_addrlist; int /*<<< orphan*/  if_name; } ;
struct TYPE_7__ {struct ifaddr* tqe_next; } ;
struct ifaddr {TYPE_4__* ifa_addr; TYPE_3__ ifa_list; } ;
struct TYPE_8__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IP6FW_IFNLEN ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
__inline int
FUNC7(struct ifnet *ifp, union ip6_fw_if *ifu, int byname)
{
	/* Check by name or by IP address */
	if (byname) {
		/* Check unit number (-1 is wildcard) */
		if (ifu->fu_via_if.unit != -1
		    && ifp->if_unit != ifu->fu_via_if.unit)
			return(0);
		/* Check name */
		if (FUNC6(ifp->if_name, ifu->fu_via_if.name, IP6FW_IFNLEN))
			return(0);
		return(1);
	} else if (!FUNC3(&ifu->fu_via_ip6)) {	/* Zero == wildcard */
		struct ifaddr *ia;

		FUNC5(ifp);
		for (ia = ifp->if_addrlist.tqh_first; ia;
		    ia = ia->ifa_list.tqe_next)
		{
			FUNC0(ia);
			if (ia->ifa_addr->sa_family != AF_INET6) {
				FUNC1(ia);
				continue;
			}
			if (!FUNC2(&ifu->fu_via_ip6,
			    &(((struct sockaddr_in6 *)
			    (ia->ifa_addr))->sin6_addr))) {
				FUNC1(ia);
				continue;
			}
			FUNC1(ia);
			FUNC4(ifp);
			return(1);
		}
		FUNC4(ifp);
		return(0);
	}
	return(1);
}