#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ifbond_ref ;
typedef  TYPE_3__* bondport_ref ;
struct TYPE_16__ {scalar_t__ verbose; } ;
struct TYPE_15__ {scalar_t__ po_selected; int /*<<< orphan*/  po_media_info; TYPE_1__* po_lag; TYPE_2__* po_bond; } ;
struct TYPE_14__ {scalar_t__ ifb_mode; TYPE_1__* ifb_active_lag; } ;
struct TYPE_13__ {scalar_t__ lag_active_media; } ;

/* Variables and functions */
 scalar_t__ IF_BOND_MODE_LACP ; 
 int /*<<< orphan*/  LAEventMediaChange ; 
 scalar_t__ SelectedState_UNSELECTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__) ; 
 TYPE_4__* g_bond ; 
 char* FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC12(bondport_ref p)
{
    ifbond_ref	bond = p->po_bond;

    if (g_bond->verbose) {
	if (FUNC8(&p->po_media_info)) {
	    FUNC11("[%s] Link UP %d Mbit/s %s duplex\n", 
			     FUNC2(p),
			     FUNC10(&p->po_media_info),
			     FUNC9(&p->po_media_info) 
			     ? "full" : "half");
	}
	else {
	    FUNC11("[%s] Link DOWN\n", FUNC2(p));
	}
    }
    if (bond->ifb_mode == IF_BOND_MODE_LACP) {
	if (FUNC8(&p->po_media_info)
	    && bond->ifb_active_lag != NULL
	    && p->po_lag == bond->ifb_active_lag
	    && p->po_selected != SelectedState_UNSELECTED) {
	    if (FUNC10(&p->po_media_info) != p->po_lag->lag_active_media) {
		if (g_bond->verbose) {
		    FUNC11("[%s] Port speed %d differs from LAG %d\n",
				     FUNC2(p),
				     FUNC10(&p->po_media_info),
				     FUNC7(p->po_lag->lag_active_media));
		}
		FUNC6(p, SelectedState_UNSELECTED);
	    }
	}
	FUNC5(p, LAEventMediaChange, NULL);
	FUNC3(p, LAEventMediaChange, NULL);
	FUNC4(p, LAEventMediaChange, NULL);
    }
    else {
	if (FUNC8(&p->po_media_info)) {
	    FUNC1(p);
	}
	else {
	    FUNC0(p);
	}
    }
    return;
}