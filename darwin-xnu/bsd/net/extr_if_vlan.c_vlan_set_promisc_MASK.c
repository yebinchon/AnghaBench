#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vlan_parent_ref ;
struct ifnet {int dummy; } ;
typedef  TYPE_2__* ifvlan_ref ;
struct TYPE_9__ {TYPE_1__* ifv_vlp; } ;
struct TYPE_8__ {int /*<<< orphan*/  vlp_ifp; } ;

/* Variables and functions */
 int EBUSY ; 
 int IFF_PROMISC ; 
 int FUNC0 (struct ifnet*) ; 
 TYPE_2__* FUNC1 (struct ifnet*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int
FUNC9(struct ifnet * ifp)
{
    int 			error = 0;
    ifvlan_ref			ifv;
    vlan_parent_ref		vlp;

    FUNC7();
    ifv = FUNC1(ifp);
    if (ifv == NULL) {
	error = EBUSY;
	goto done;
    }

    vlp = ifv->ifv_vlp;
    if (vlp == NULL) {
	goto done;
    }
    if ((FUNC0(ifp) & IFF_PROMISC) != 0) {
	if (!FUNC4(ifv)) {
	    error = FUNC2(vlp->vlp_ifp, 1);
	    if (error == 0) {
		FUNC5(ifv);
	    }
	}
    } else {
	if (FUNC4(ifv)) {
	    error = FUNC2(vlp->vlp_ifp, 0);
	    if (error == 0) {
		FUNC3(ifv);
	    }
	}
    }
 done:
    FUNC8();
    if (ifv != NULL) {
	FUNC6(ifv);
    }
    return (error);
}