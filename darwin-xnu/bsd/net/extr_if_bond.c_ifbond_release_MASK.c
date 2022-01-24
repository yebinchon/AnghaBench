#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ifbond_ref ;
typedef  int UInt32 ;
struct TYPE_8__ {int /*<<< orphan*/  ifma_addr; int /*<<< orphan*/  ifma_ifp; } ;
struct TYPE_7__ {int /*<<< orphan*/  verbose; } ;
struct TYPE_6__ {char* ifb_name; int /*<<< orphan*/ * ifb_distributing_array; TYPE_5__* ifb_ifma_slow_proto; int /*<<< orphan*/  ifb_retain_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  M_BOND ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bond_cloner ; 
 TYPE_4__* g_bond ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static __inline__ void
FUNC7(ifbond_ref ifb)
{
    UInt32		old_retain_count;

    old_retain_count = FUNC2(&ifb->ifb_retain_count);
    switch (old_retain_count) {
    case 0:
	FUNC5("ifbond_release: retain count is 0\n");
	break;
    case 1:
	if (g_bond->verbose) {
	    FUNC6("ifbond_release(%s)\n", ifb->ifb_name);
	}
	if (ifb->ifb_ifma_slow_proto != NULL) {
	    if (g_bond->verbose) {
		FUNC6("ifbond_release(%s) removing multicast\n",
		       ifb->ifb_name);
	    }
	    (void) FUNC4(ifb->ifb_ifma_slow_proto->ifma_ifp,
	        ifb->ifb_ifma_slow_proto->ifma_addr);
	    FUNC1(ifb->ifb_ifma_slow_proto);
	}
	if (ifb->ifb_distributing_array != NULL) {
	    FUNC0(ifb->ifb_distributing_array, M_BOND);
	}
	FUNC3(&bond_cloner, ifb);
	break;
    default:
	break;
    }
    return;
}