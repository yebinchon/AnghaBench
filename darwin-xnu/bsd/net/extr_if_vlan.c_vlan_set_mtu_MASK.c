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
typedef  int /*<<< orphan*/ * vlan_parent_ref ;
struct ifnet {int dummy; } ;
typedef  TYPE_1__* ifvlan_ref ;
struct TYPE_8__ {int /*<<< orphan*/ * ifv_vlp; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int IF_MINMTU ; 
 TYPE_1__* FUNC0 (struct ifnet*) ; 
 TYPE_1__* FUNC1 (struct ifnet*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int
FUNC12(struct ifnet * ifp, int mtu)
{
    int			error = 0;
    ifvlan_ref		ifv;
    vlan_parent_ref	vlp;

    if (mtu < IF_MINMTU) {
	return (EINVAL);
    }
    FUNC6();
    ifv = FUNC1(ifp);
    if (ifv == NULL) {
	FUNC11();
	return (EBUSY);
    }
    vlp = FUNC3(ifv);
    if (vlp == NULL) {
	FUNC11();
	FUNC5(ifv);
	if (mtu != 0) {
	    return (EINVAL);
	}
	return (0);
    }
    FUNC10(vlp, "vlan_set_mtu");

    /* check again, something might have changed */
    if (FUNC0(ifp) != ifv
	|| FUNC2(ifv)) {
	error = EBUSY;
	goto signal_done;
    }
    if (ifv->ifv_vlp != vlp) {
	/* vlan parent changed */
	goto signal_done;
    }
    if (FUNC7(vlp)) {
	if (mtu != 0) {
	    error = EINVAL;
	}
	goto signal_done;
    }
    error = FUNC4(ifv, mtu);

 signal_done:
    FUNC9(vlp, "vlan_set_mtu");
    FUNC11();
    FUNC8(vlp);
    FUNC5(ifv);

    return (error);
}