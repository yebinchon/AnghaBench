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
struct TYPE_6__ {void* p_ref; void* p_params; void* p_cback; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_BLE_MULTI_ADV_ENB ;
typedef  int /*<<< orphan*/  tBTA_BLE_MULTI_ADV_CBACK ;
typedef  int /*<<< orphan*/  tBTA_BLE_ADV_PARAMS ;
typedef  int UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_DM_API_BLE_MULTI_ADV_ENB_EVT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5 (tBTA_BLE_ADV_PARAMS *p_params,
                               tBTA_BLE_MULTI_ADV_CBACK *p_cback,
                               void *p_ref)
{
    ///This function just used for vendor debug
    tBTA_DM_API_BLE_MULTI_ADV_ENB    *p_msg;
    UINT16 len = sizeof(tBTA_BLE_ADV_PARAMS) + sizeof(tBTA_DM_API_BLE_MULTI_ADV_ENB);

    FUNC0 ("BTA_BleEnableAdvInstance");

    if ((p_msg = (tBTA_DM_API_BLE_MULTI_ADV_ENB *) FUNC4(len)) != NULL) {
        FUNC3(p_msg, 0, sizeof(tBTA_DM_API_BLE_MULTI_ADV_ENB));

        p_msg->hdr.event     = BTA_DM_API_BLE_MULTI_ADV_ENB_EVT;
        p_msg->p_cback      = (void *)p_cback;
        if (p_params != NULL) {
            p_msg->p_params =  (void *)(p_msg + 1);
            FUNC2(p_msg->p_params, p_params, sizeof(tBTA_BLE_ADV_PARAMS));
        }
        p_msg->p_ref        = p_ref;

        FUNC1(p_msg);
    }
}