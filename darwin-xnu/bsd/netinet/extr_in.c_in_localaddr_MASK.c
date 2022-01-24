#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct TYPE_3__ {struct in_ifaddr* tqe_next; } ;
struct in_ifaddr {int ia_netmask; int ia_net; int ia_subnetmask; int ia_subnet; int /*<<< orphan*/  ia_ifa; TYPE_1__ ia_link; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {struct in_ifaddr* tqh_first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  in_ifaddr_rwlock ; 
 TYPE_2__ in_ifaddrhead ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ subnetsarelocal ; 

int
FUNC6(struct in_addr in)
{
	u_int32_t i = FUNC5(in.s_addr);
	struct in_ifaddr *ia;

	if (FUNC2(i))
		return (1);

	if (subnetsarelocal) {
		FUNC4(in_ifaddr_rwlock);
		for (ia = in_ifaddrhead.tqh_first; ia != NULL;
		    ia = ia->ia_link.tqe_next) {
			FUNC0(&ia->ia_ifa);
			if ((i & ia->ia_netmask) == ia->ia_net) {
				FUNC1(&ia->ia_ifa);
				FUNC3(in_ifaddr_rwlock);
				return (1);
			}
			FUNC1(&ia->ia_ifa);
		}
		FUNC3(in_ifaddr_rwlock);
	} else {
		FUNC4(in_ifaddr_rwlock);
		for (ia = in_ifaddrhead.tqh_first; ia != NULL;
		    ia = ia->ia_link.tqe_next) {
			FUNC0(&ia->ia_ifa);
			if ((i & ia->ia_subnetmask) == ia->ia_subnet) {
				FUNC1(&ia->ia_ifa);
				FUNC3(in_ifaddr_rwlock);
				return (1);
			}
			FUNC1(&ia->ia_ifa);
		}
		FUNC3(in_ifaddr_rwlock);
	}
	return (0);
}