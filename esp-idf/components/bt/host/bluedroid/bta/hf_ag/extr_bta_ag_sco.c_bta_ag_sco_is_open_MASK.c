#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_AG_SCB ;
struct TYPE_3__ {scalar_t__ state; int /*<<< orphan*/ * p_curr_scb; } ;
struct TYPE_4__ {TYPE_1__ sco; } ;
typedef  int BOOLEAN ;

/* Variables and functions */
 scalar_t__ BTA_AG_SCO_OPEN_ST ; 
 TYPE_2__ bta_ag_cb ; 

BOOLEAN FUNC0(tBTA_AG_SCB *p_scb)
{
    return ((bta_ag_cb.sco.state == BTA_AG_SCO_OPEN_ST) &&
            (bta_ag_cb.sco.p_curr_scb == p_scb));
}