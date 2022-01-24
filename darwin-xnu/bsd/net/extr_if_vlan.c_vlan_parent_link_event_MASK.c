#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vlan_parent_ref ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct ifnet {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  vlp_event_code; } ;

/* Variables and functions */
 int IFEF_VLAN ; 
 int FUNC0 (struct ifnet*) ; 
 TYPE_1__* FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void
FUNC10(struct ifnet * p, u_int32_t event_code)
{
    vlan_parent_ref 	vlp;

    FUNC2();
    if ((FUNC0(p) & IFEF_VLAN) == 0) {
	FUNC9();
	/* no VLAN's */
	return;
    }
    vlp = FUNC1(p);
    if (vlp == NULL) {
	/* no VLAN's */
	FUNC9();
	return;
    }
    FUNC4(vlp);
    vlp->vlp_event_code = event_code;
    if (FUNC3(vlp)) {
	/* don't block waiting to generate an event */
	FUNC9();
	return;
    }
    FUNC6(vlp);
    FUNC8(vlp, "vlan_parent_link_event");
    FUNC7(vlp, "vlan_parent_link_event");
    FUNC9();
    FUNC5(vlp);
    return;

}