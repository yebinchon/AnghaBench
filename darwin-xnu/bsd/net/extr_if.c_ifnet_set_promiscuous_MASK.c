#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ifnet_t ;
typedef  int errno_t ;
struct TYPE_8__ {int if_flags; scalar_t__ if_pcount; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

errno_t
FUNC6(
	ifnet_t	ifp,
	int pswitch)
{
	int error = 0;
	int oldflags = 0;
	int newflags = 0;

	FUNC3(ifp);
	oldflags = ifp->if_flags;
	ifp->if_pcount += pswitch ? 1 : -1;

	if (ifp->if_pcount > 0)
		ifp->if_flags |= IFF_PROMISC;
	else
		ifp->if_flags &= ~IFF_PROMISC;

	newflags = ifp->if_flags;
	FUNC2(ifp);

	if (newflags != oldflags && (newflags & IFF_UP) != 0) {
		error = FUNC1(ifp, 0, SIOCSIFFLAGS, NULL);
		if (error == 0) {
			FUNC5(ifp);
		} else {
			FUNC3(ifp);
			// revert the flags
			ifp->if_pcount -= pswitch ? 1 : -1;
			if (ifp->if_pcount > 0)
			    ifp->if_flags |= IFF_PROMISC;
			else
			    ifp->if_flags &= ~IFF_PROMISC;
			FUNC2(ifp);
		}
	}

	if (newflags != oldflags) {
		FUNC4(LOG_INFO, "%s: promiscuous mode %s%s\n",
		    FUNC0(ifp),
		    (newflags & IFF_PROMISC) != 0 ? "enable" : "disable",
		    error != 0 ? " failed" : " succeeded");
	}
	return (error);
}