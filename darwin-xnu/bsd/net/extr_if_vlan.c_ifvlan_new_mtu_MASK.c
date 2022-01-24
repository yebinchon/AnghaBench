#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vlan_parent_ref ;
struct ifnet {int dummy; } ;
struct ifdevmtu {int ifdm_max; int ifdm_min; int ifdm_current; } ;
typedef  TYPE_2__* ifvlan_ref ;
struct TYPE_7__ {int ifv_mtufudge; TYPE_1__* ifv_vlp; struct ifnet* ifv_ifp; } ;
struct TYPE_6__ {struct ifnet* vlp_ifp; struct ifdevmtu vlp_devmtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int) ; 
 int FUNC1 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(ifvlan_ref ifv, int mtu)
{
    struct ifdevmtu *	devmtu_p;
    int			error = 0;
    struct ifnet * 	ifp = ifv->ifv_ifp;
    int			max_mtu;
    int			new_mtu = 0;
    int			req_mtu;
    vlan_parent_ref	vlp;

    FUNC2();
    vlp = ifv->ifv_vlp;
    devmtu_p = &vlp->vlp_devmtu;
    req_mtu = mtu + ifv->ifv_mtufudge;
    if (req_mtu > devmtu_p->ifdm_max || req_mtu < devmtu_p->ifdm_min) {
	return (EINVAL);
    }
    max_mtu = FUNC4(vlp, ifv);
    if (req_mtu > max_mtu) {
	new_mtu = req_mtu;
    }
    else if (max_mtu < devmtu_p->ifdm_current) {
	new_mtu = max_mtu;
    }
    if (new_mtu != 0) {
	struct ifnet * 	p = vlp->vlp_ifp;
	FUNC5();
	error = FUNC1(p, new_mtu);
	FUNC3();
    }
    if (error == 0) {
	if (new_mtu != 0) {
	    devmtu_p->ifdm_current = new_mtu;
	}
	FUNC0(ifp, mtu);
    }
    return (error);
}