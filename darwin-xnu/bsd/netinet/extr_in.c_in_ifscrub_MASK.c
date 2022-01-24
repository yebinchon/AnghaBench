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
struct in_ifaddr {int ia_flags; int /*<<< orphan*/  ia_ifa; } ;
struct ifnet {int if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IFA_ROUTE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int IFF_LOOPBACK ; 
 int IFF_POINTOPOINT ; 
 int /*<<< orphan*/  RTF_HOST ; 
 scalar_t__ RTM_DELETE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void
FUNC5(struct ifnet *ifp, struct in_ifaddr *ia, int locked)
{
	FUNC0(&ia->ia_ifa);
	if ((ia->ia_flags & IFA_ROUTE) == 0) {
		FUNC1(&ia->ia_ifa);
		return;
	}
	FUNC1(&ia->ia_ifa);
	if (!locked)
		FUNC2(rnh_lock);
	if (ifp->if_flags & (IFF_LOOPBACK|IFF_POINTOPOINT))
		FUNC4(&(ia->ia_ifa), (int)RTM_DELETE, RTF_HOST);
	else
		FUNC4(&(ia->ia_ifa), (int)RTM_DELETE, 0);
	FUNC0(&ia->ia_ifa);
	ia->ia_flags &= ~IFA_ROUTE;
	FUNC1(&ia->ia_ifa);
	if (!locked)
		FUNC3(rnh_lock);
}