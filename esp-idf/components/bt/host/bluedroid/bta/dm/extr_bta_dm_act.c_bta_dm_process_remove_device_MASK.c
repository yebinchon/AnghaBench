#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBT_TRANSPORT ;
struct TYPE_6__ {int /*<<< orphan*/  status; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_7__ {TYPE_1__ link_down; } ;
typedef  TYPE_2__ tBTA_DM_SEC ;
struct TYPE_8__ {int /*<<< orphan*/  (* p_sec_cback ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_DM_BLE_DEV_UNPAIRED_EVT ; 
 int /*<<< orphan*/  BTA_DM_DEV_UNPAIRED_EVT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ BT_TRANSPORT_LE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ bta_dm_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(BD_ADDR bd_addr, tBT_TRANSPORT transport)
{
#if (BLE_INCLUDED == TRUE && GATTC_INCLUDED == TRUE)
    /* need to remove all pending background connection before unpair */
    FUNC0(0, bd_addr, FALSE);
#endif

    FUNC2(bd_addr, transport);

#if (BLE_INCLUDED == TRUE && GATTC_INCLUDED == TRUE)
    /* remove all cached GATT information */
    FUNC1(bd_addr, false);
#endif
    if (bta_dm_cb.p_sec_cback) {
        tBTA_DM_SEC sec_event;
        FUNC3(sec_event.link_down.bd_addr, bd_addr);
        sec_event.link_down.status = HCI_SUCCESS;
        if (transport == BT_TRANSPORT_LE){
            bta_dm_cb.p_sec_cback(BTA_DM_BLE_DEV_UNPAIRED_EVT, &sec_event);
        } else {
            bta_dm_cb.p_sec_cback(BTA_DM_DEV_UNPAIRED_EVT, &sec_event);
        }

    }
}