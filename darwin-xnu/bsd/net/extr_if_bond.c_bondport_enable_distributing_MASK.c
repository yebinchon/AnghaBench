#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ifbond_ref ;
typedef  TYPE_2__* bondport_ref ;
struct TYPE_10__ {scalar_t__ verbose; } ;
struct TYPE_9__ {TYPE_1__* po_bond; } ;
struct TYPE_8__ {int /*<<< orphan*/  ifb_distributing_count; TYPE_2__** ifb_distributing_array; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_3__* g_bond ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(bondport_ref p)
{
    if (FUNC0(p) == 0) {
	ifbond_ref	bond = p->po_bond;

	bond->ifb_distributing_array[bond->ifb_distributing_count++] = p;
	if (g_bond->verbose) {
	    FUNC3("[%s] Distribution Enabled\n",
			     FUNC2(p));
	}
	FUNC1(p);
    }
    return;
}