#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ifbond_ref ;
typedef  TYPE_2__* bondport_ref ;
struct TYPE_11__ {scalar_t__ verbose; } ;
struct TYPE_10__ {int /*<<< orphan*/  lag_selected_port_count; } ;
struct TYPE_9__ {scalar_t__ po_selected; TYPE_3__* po_lag; TYPE_1__* po_bond; } ;
struct TYPE_8__ {TYPE_3__* ifb_active_lag; } ;
typedef  scalar_t__ SelectedState ;
typedef  TYPE_3__* LAG_ref ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ SelectedState_SELECTED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_4__* g_bond ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC4(bondport_ref p, SelectedState s)
{
    if (s != p->po_selected) {
	ifbond_ref	bond = p->po_bond;
	LAG_ref		lag = p->po_lag;

	FUNC1(p);
	if (lag != NULL && bond->ifb_active_lag == lag) {
	    if (p->po_selected == SelectedState_SELECTED) {
		lag->lag_selected_port_count--;
	    }
	    else if (s == SelectedState_SELECTED) {
		lag->lag_selected_port_count++;
	    }
	    if (g_bond->verbose) {
		FUNC3("[%s] SetSelected: %s (was %s)\n",
				 FUNC2(p), 
				 FUNC0(s),
				 FUNC0(p->po_selected));
	    }
	}
    }
    p->po_selected = s;
    return;
}