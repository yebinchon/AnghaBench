#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  TYPE_1__* ifvlan_ref ;
struct TYPE_6__ {int /*<<< orphan*/  verbose; } ;
struct TYPE_5__ {scalar_t__ ifv_signature; char* ifv_name; int /*<<< orphan*/  ifv_retain_count; } ;

/* Variables and functions */
 scalar_t__ IFV_SIGNATURE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* g_vlan ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  vlan_cloner ; 

__attribute__((used)) static void
FUNC4(ifvlan_ref ifv)
{
    u_int32_t		old_retain_count;

    if (ifv->ifv_signature != IFV_SIGNATURE) {
	FUNC2("ifvlan_release: bad signature\n");
    }
    old_retain_count = FUNC0(&ifv->ifv_retain_count);
    switch (old_retain_count) {
    case 0:
	FUNC2("ifvlan_release: retain count is 0\n");
	break;
    case 1:
	if (g_vlan->verbose) {
	    FUNC3("ifvlan_release(%s)\n", ifv->ifv_name);
	}
	ifv->ifv_signature = 0;
	FUNC1(&vlan_cloner, ifv);
	break;
    default:
	break;
    }
    return;
}