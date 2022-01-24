#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vlan_parent_ref ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {int vlp_retain_count; int /*<<< orphan*/  vlp_signature; struct ifnet* vlp_ifp; int /*<<< orphan*/  vlp_vlan_list; int /*<<< orphan*/  vlp_devmtu; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int IF_HWASSIST_VLAN_MTU ; 
 int IF_HWASSIST_VLAN_TAGGING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_VLAN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  VLP_SIGNATURE ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (struct ifnet*) ; 
 int FUNC4 (struct ifnet*) ; 
 int FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int) ; 
 int FUNC7 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC9(struct ifnet * p, vlan_parent_ref * ret_vlp)
{
    int			error;
    vlan_parent_ref	vlp;

    *ret_vlp = NULL;
    vlp = FUNC2(sizeof(*vlp), M_VLAN, M_WAITOK | M_ZERO);
    if (vlp == NULL) {
	return (ENOMEM);
    }
    error = FUNC7(p, &vlp->vlp_devmtu);
    if (error != 0) {
	FUNC6("vlan_parent_create (%s%d): siocgifdevmtu failed, %d\n",
	       FUNC3(p), FUNC5(p), error);
	FUNC0(vlp, M_VLAN);
	return (error);
    }
    FUNC1(&vlp->vlp_vlan_list);
    vlp->vlp_ifp = p;
    vlp->vlp_retain_count = 1;
    vlp->vlp_signature = VLP_SIGNATURE;
    if (FUNC4(p)
	& (IF_HWASSIST_VLAN_MTU | IF_HWASSIST_VLAN_TAGGING)) {
	FUNC8(vlp);
    }
    *ret_vlp = vlp;
    return (0);
}