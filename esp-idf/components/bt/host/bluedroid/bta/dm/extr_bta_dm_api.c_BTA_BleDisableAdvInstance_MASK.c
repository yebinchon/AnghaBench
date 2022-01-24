#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
struct TYPE_6__ {int /*<<< orphan*/  inst_id; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_BLE_MULTI_ADV_DISABLE ;
typedef  int /*<<< orphan*/  UINT8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTA_DM_API_BLE_MULTI_ADV_DISABLE_EVT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4 (UINT8  inst_id)     //this function just used for vendor debug
{
    tBTA_DM_API_BLE_MULTI_ADV_DISABLE    *p_msg;

    FUNC0 ("BTA_BleDisableAdvInstance: %d", inst_id);
    if ((p_msg = (tBTA_DM_API_BLE_MULTI_ADV_DISABLE *)
                 FUNC3(sizeof(tBTA_DM_API_BLE_MULTI_ADV_DISABLE))) != NULL) {
        FUNC2(p_msg, 0, sizeof(tBTA_DM_API_BLE_MULTI_ADV_DISABLE));
        p_msg->hdr.event    = BTA_DM_API_BLE_MULTI_ADV_DISABLE_EVT;
        p_msg->inst_id      = inst_id;
        FUNC1(p_msg);
    }
}