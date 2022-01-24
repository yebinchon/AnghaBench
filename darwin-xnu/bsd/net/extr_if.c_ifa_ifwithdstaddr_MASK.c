#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_7__ {struct ifaddr* tqh_first; } ;
struct TYPE_6__ {struct ifnet* tqe_next; } ;
struct ifnet {int if_flags; TYPE_2__ if_addrhead; TYPE_1__ if_link; } ;
struct TYPE_8__ {struct ifaddr* tqe_next; } ;
struct ifaddr {int /*<<< orphan*/  ifa_dstaddr; TYPE_4__* ifa_addr; TYPE_3__ ifa_link; } ;
struct TYPE_10__ {struct ifnet* tqh_first; } ;
struct TYPE_9__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr*) ; 
 int IFF_POINTOPOINT ; 
 scalar_t__ FUNC3 (struct sockaddr const*,int /*<<< orphan*/ ) ; 
 TYPE_5__ ifnet_head ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 

struct ifaddr *
FUNC8(const struct sockaddr *addr)
{
	struct ifnet *ifp;
	struct ifaddr *ifa;
	struct ifaddr *result = NULL;

	FUNC5();
	for (ifp = ifnet_head.tqh_first; ifp && !result;
	    ifp = ifp->if_link.tqe_next) {
	    if ((ifp->if_flags & IFF_POINTOPOINT)) {
			FUNC7(ifp);
			for (ifa = ifp->if_addrhead.tqh_first; ifa;
			    ifa = ifa->ifa_link.tqe_next) {
				FUNC1(ifa);
				if (ifa->ifa_addr->sa_family !=
				    addr->sa_family) {
					FUNC2(ifa);
					continue;
				}
				if (FUNC3(addr, ifa->ifa_dstaddr)) {
					result = ifa;
					FUNC0(ifa);	/* for caller */
					FUNC2(ifa);
					break;
				}
				FUNC2(ifa);
			}
			FUNC6(ifp);
		}
	}
	FUNC4();
	return (result);
}