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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_7__ {struct ifaddr* tqe_next; } ;
struct ifaddr {TYPE_3__* ifa_addr; TYPE_2__ ifa_list; } ;
struct TYPE_9__ {scalar_t__ s_addr; } ;
struct TYPE_10__ {TYPE_4__ sin_addr; } ;
struct in_ifaddr {struct ifaddr ia_ifa; TYPE_5__ ia_addr; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct in6_ifaddr {int dummy; } ;
struct TYPE_6__ {struct ifaddr* tqh_first; } ;
struct ifnet {TYPE_1__ if_addrlist; } ;
typedef  int /*<<< orphan*/  in ;
struct TYPE_8__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct in_ifaddr* FUNC5 (int /*<<< orphan*/ *) ; 
 struct in_ifaddr* FUNC6 (struct in_ifaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct in_addr*,int) ; 
 int /*<<< orphan*/  ia_link ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  in_ifaddr_rwlock ; 
 int /*<<< orphan*/  in_ifaddrhead ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct in6_ifaddr *
FUNC12(struct ifnet *ifp)
{
	struct ifaddr *ia;
	struct in_ifaddr *ia4;
	struct sockaddr_in6 *sin6;
	struct in_addr in;

	FUNC9(ifp);
	for (ia = ifp->if_addrlist.tqh_first; ia; ia = ia->ifa_list.tqe_next) {
		FUNC2(ia);
		if (ia->ifa_addr == NULL) {
			FUNC3(ia);
			continue;
		}
		if (ia->ifa_addr->sa_family != AF_INET6) {
			FUNC3(ia);
			continue;
		}
		sin6 = (struct sockaddr_in6 *)(void *)ia->ifa_addr;
		if (!FUNC4(&sin6->sin6_addr)) {
			FUNC3(ia);
			continue;
		}
		FUNC7(FUNC0(&sin6->sin6_addr), &in, sizeof(in));
		FUNC3(ia);
		FUNC11(in_ifaddr_rwlock);
		for (ia4 = FUNC5(&in_ifaddrhead);
		     ia4;
		     ia4 = FUNC6(ia4, ia_link))
		{
			FUNC2(&ia4->ia_ifa);
			if (ia4->ia_addr.sin_addr.s_addr == in.s_addr) {
				FUNC3(&ia4->ia_ifa);
				break;
			}
			FUNC3(&ia4->ia_ifa);
		}
		FUNC10(in_ifaddr_rwlock);
		if (ia4 == NULL)
			continue;

		FUNC1(ia);		/* for caller */
		FUNC8(ifp);
		return ((struct in6_ifaddr *)ia);
	}
	FUNC8(ifp);

	return (NULL);
}