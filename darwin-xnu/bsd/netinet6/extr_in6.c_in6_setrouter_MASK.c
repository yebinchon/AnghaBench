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
struct nd_ifinfo {int flags; int /*<<< orphan*/  lock; scalar_t__ initialized; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_eflags; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IFEF_IPV6_ROUTER ; 
 int IFF_LOOPBACK ; 
 int ND6_IFF_PROXY_PREFIXES ; 
 struct nd_ifinfo* FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int FUNC6 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nd6_mutex ; 

__attribute__((used)) static __attribute__((noinline)) int
FUNC10(struct ifnet *ifp, int enable)
{
	FUNC1(ifp != NULL);

	if (ifp->if_flags & IFF_LOOPBACK)
		return (ENODEV);

	if (enable) {
		struct nd_ifinfo *ndi = NULL;

		ndi = FUNC0(ifp);
		if (ndi != NULL && ndi->initialized) {
			FUNC7(&ndi->lock);
			if (ndi->flags & ND6_IFF_PROXY_PREFIXES) {
				/* No proxy if we are an advertising router */
				ndi->flags &= ~ND6_IFF_PROXY_PREFIXES;
				FUNC8(&ndi->lock);
				(void) FUNC9(ifp, FALSE);
			} else {
				FUNC8(&ndi->lock);
			}
		}
	}

	FUNC5(ifp);
	if (enable) {
		ifp->if_eflags |= IFEF_IPV6_ROUTER;
	} else {
		ifp->if_eflags &= ~IFEF_IPV6_ROUTER;
	}
	FUNC4(ifp);

	FUNC7(nd6_mutex);
	FUNC2(ifp);
	FUNC8(nd6_mutex);

	FUNC3(ifp, enable);

	return (FUNC6(ifp, FALSE));
}