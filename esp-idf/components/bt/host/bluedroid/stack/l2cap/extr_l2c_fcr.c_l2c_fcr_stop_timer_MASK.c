#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ in_use; } ;
struct TYPE_5__ {TYPE_4__ mon_retrans_timer; } ;
struct TYPE_6__ {TYPE_1__ fcrb; } ;
typedef  TYPE_2__ tL2C_CCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 

void FUNC2 (tL2C_CCB *p_ccb)
{
    FUNC0(p_ccb != NULL);
    if (p_ccb->fcrb.mon_retrans_timer.in_use) {
        FUNC1 (&p_ccb->fcrb.mon_retrans_timer);
    }
}