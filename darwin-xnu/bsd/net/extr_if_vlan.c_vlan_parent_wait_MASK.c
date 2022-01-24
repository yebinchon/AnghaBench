#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vlan_parent_ref ;
struct ifnet {int dummy; } ;
struct TYPE_8__ {scalar_t__ verbose; } ;
struct TYPE_7__ {struct ifnet* vlp_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  PZERO ; 
 TYPE_6__* g_vlan ; 
 char* FUNC0 (struct ifnet*) ; 
 char* FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  vlan_lck_mtx ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(vlan_parent_ref vlp, const char * msg)
{
    int		waited = 0;

    /* other add/remove/multicast-change in progress */
    while (FUNC4(vlp)) {
	if (g_vlan->verbose) {
	    struct ifnet * ifp = vlp->vlp_ifp;

	    FUNC3("%s%d: %s msleep\n", FUNC0(ifp), FUNC1(ifp), msg);
	}
	waited = 1;
	(void)FUNC2(vlp, vlan_lck_mtx, PZERO, msg, 0);
    }
    /* prevent other vlan parent remove/add from taking place */
    FUNC5(vlp);
    if (g_vlan->verbose && waited) {
	struct ifnet * ifp = vlp->vlp_ifp;

	FUNC3("%s%d: %s woke up\n", FUNC0(ifp), FUNC1(ifp), msg);
    }
    return;
}