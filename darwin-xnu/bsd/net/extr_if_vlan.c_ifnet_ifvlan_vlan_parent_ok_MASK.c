#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlan_parent_ref ;
struct ifnet {int dummy; } ;
typedef  TYPE_1__* ifvlan_ref ;
struct TYPE_5__ {scalar_t__ ifv_vlp; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 TYPE_1__* FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct ifnet * ifp, ifvlan_ref ifv,
			    vlan_parent_ref vlp)
{
    ifvlan_ref		check_ifv;

    check_ifv = FUNC0(ifp);
    if (check_ifv != ifv || FUNC1(ifv)) {
	/* ifvlan_ref no longer valid */
	return (FALSE);
    }
    if (ifv->ifv_vlp != vlp) {
	/* vlan_parent no longer valid */
	return (FALSE);
    }
    if (FUNC2(vlp)) {
	/* parent is detaching */
	return (FALSE);
    }
    return (TRUE);
}