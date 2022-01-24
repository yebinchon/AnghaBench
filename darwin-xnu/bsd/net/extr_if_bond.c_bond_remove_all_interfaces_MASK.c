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
typedef  TYPE_1__* ifbond_ref ;
typedef  TYPE_2__* bondport_ref ;
struct TYPE_7__ {int /*<<< orphan*/  po_ifp; } ;
struct TYPE_6__ {int /*<<< orphan*/  ifb_port_list; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  port_list ; 

__attribute__((used)) static void
FUNC3(ifbond_ref ifb)
{
    bondport_ref	p;

    FUNC1();

    /*
     * do this in reverse order to avoid re-programming the mac address
     * as each head interface is removed
     */
    while ((p = FUNC0(&ifb->ifb_port_list, port_list)) != NULL) {
	FUNC2(ifb, p->po_ifp);
    }
    return;
}