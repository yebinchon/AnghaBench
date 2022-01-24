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
struct ifnet {int if_updatemcasts; } ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 scalar_t__ EAFNOSUPPORT ; 
 int /*<<< orphan*/  SIOCADDMULTI ; 
 char* FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int,scalar_t__) ; 

errno_t
FUNC3(struct ifnet *ifp)
{
	errno_t err;

	err = FUNC1(ifp, 0, SIOCADDMULTI, NULL);
	if (err == EAFNOSUPPORT)
		err = 0;
	FUNC2("%s: %s %d suspended link-layer multicast membership(s) "
	    "(err=%d)\n", FUNC0(ifp),
	    (err == 0 ? "successfully restored" : "failed to restore"),
	    ifp->if_updatemcasts, err);

	/* just return success */
	return (0);
}