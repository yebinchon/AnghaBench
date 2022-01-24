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
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw_module; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_SYS_HW_MSG ;
struct TYPE_7__ {int /*<<< orphan*/  disabling; } ;
typedef  int /*<<< orphan*/  TIMER_LIST_ENT ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_SYS_API_DISABLE_EVT ; 
 int /*<<< orphan*/  BTA_SYS_HW_BLUETOOTH ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__ bta_dm_cb ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  bta_dm_sys_hw_cback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5 (TIMER_LIST_ENT *p_tle)
{
    FUNC0(p_tle);
    tBTA_SYS_HW_MSG *sys_enable_event;

#if (BTA_DM_PM_INCLUDED == TRUE)
    /* disable the power managment module */
    FUNC1();
#endif /* #if (BTA_DM_PM_INCLUDED == TRUE) */

    /* register our callback to SYS HW manager */
    FUNC2( BTA_SYS_HW_BLUETOOTH, bta_dm_sys_hw_cback );

    /* send a message to BTA SYS */
    if ((sys_enable_event = (tBTA_SYS_HW_MSG *) FUNC4(sizeof(tBTA_SYS_HW_MSG))) != NULL) {
        sys_enable_event->hdr.event = BTA_SYS_API_DISABLE_EVT;
        sys_enable_event->hw_module = BTA_SYS_HW_BLUETOOTH;
        FUNC3(sys_enable_event);
    }

    bta_dm_cb.disabling = FALSE;

}