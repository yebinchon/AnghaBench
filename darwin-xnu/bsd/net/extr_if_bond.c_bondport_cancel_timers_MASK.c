#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bondport_ref ;
struct TYPE_3__ {int /*<<< orphan*/  po_transmit_timer; int /*<<< orphan*/  po_wait_while_timer; int /*<<< orphan*/  po_periodic_timer; int /*<<< orphan*/  po_current_while_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(bondport_ref p)
{
    FUNC0(p->po_current_while_timer);
    FUNC0(p->po_periodic_timer);
    FUNC0(p->po_wait_while_timer);
    FUNC0(p->po_transmit_timer);
}