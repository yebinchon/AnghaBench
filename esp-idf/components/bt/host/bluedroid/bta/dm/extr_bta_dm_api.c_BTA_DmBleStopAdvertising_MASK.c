#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_DM_API_BLE_STOP_ADV_EVT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

extern void FUNC4(void)
{
    BT_HDR   *p_msg;

    FUNC0("BTA_DmBleStopAdvertising\n");

    if ((p_msg = (BT_HDR *) FUNC3(sizeof(BT_HDR))) != NULL) {
        FUNC2(p_msg, 0, sizeof(BT_HDR));
        p_msg->event = BTA_DM_API_BLE_STOP_ADV_EVT;
        FUNC1(p_msg);
    }
}