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
struct ifnet {int if_amcount; int /*<<< orphan*/  if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_ALLMULTI ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int FUNC0 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 

int
FUNC4(struct ifnet *ifp, int onswitch)
{
	int error = 0;
	int	modified = 0;

	FUNC2(ifp);

	if (onswitch) {
		if (ifp->if_amcount++ == 0) {
			ifp->if_flags |= IFF_ALLMULTI;
			modified = 1;
		}
	} else {
		if (ifp->if_amcount > 1) {
			ifp->if_amcount--;
		} else {
			ifp->if_amcount = 0;
			ifp->if_flags &= ~IFF_ALLMULTI;
			modified = 1;
		}
	}
	FUNC1(ifp);

	if (modified)
		error = FUNC0(ifp, 0, SIOCSIFFLAGS, NULL);

	if (error == 0)
		FUNC3(ifp);
	return (error);
}