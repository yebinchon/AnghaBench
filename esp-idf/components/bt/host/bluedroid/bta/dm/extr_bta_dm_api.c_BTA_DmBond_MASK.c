#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  event; } ;
struct TYPE_5__ {int /*<<< orphan*/  transport; int /*<<< orphan*/  bd_addr; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_BOND ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_DM_API_BOND_EVT ; 
 int /*<<< orphan*/  BTA_TRANSPORT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(BD_ADDR bd_addr)
{
    tBTA_DM_API_BOND    *p_msg;

    p_msg = (tBTA_DM_API_BOND *) FUNC2(sizeof(tBTA_DM_API_BOND));
    if (p_msg != NULL) {
        p_msg->hdr.event = BTA_DM_API_BOND_EVT;
        FUNC0(p_msg->bd_addr, bd_addr);
        p_msg->transport = BTA_TRANSPORT_UNKNOWN;
        FUNC1(p_msg);
    }
}