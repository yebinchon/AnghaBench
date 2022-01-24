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
typedef  int /*<<< orphan*/ * tBTA_DM_BLE_REF_VALUE ;
typedef  int /*<<< orphan*/  tBTA_DM_BLE_PF_STATUS_CBACK ;
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
struct TYPE_6__ {int /*<<< orphan*/ * p_filt_status_cback; int /*<<< orphan*/ * ref_value; int /*<<< orphan*/ * action; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_ENABLE_SCAN_FILTER ;
typedef  int /*<<< orphan*/  tBLE_BD_ADDR ;
typedef  int /*<<< orphan*/ * UINT8 ;
typedef  int UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BTA_DM_API_SCAN_FILTER_ENABLE_EVT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(UINT8 action, tBTA_DM_BLE_PF_STATUS_CBACK *p_cmpl_cback,
                            tBTA_DM_BLE_REF_VALUE ref_value)
{
#if BLE_ANDROID_CONTROLLER_SCAN_FILTER == TRUE
    tBTA_DM_API_ENABLE_SCAN_FILTER *p_msg;
    FUNC0 ("BTA_DmEnableScanFilter: %d\n", action);

    UINT16  len = sizeof(tBTA_DM_API_ENABLE_SCAN_FILTER) + sizeof(tBLE_BD_ADDR);

    if ((p_msg = (tBTA_DM_API_ENABLE_SCAN_FILTER *) FUNC4(len)) != NULL) {
        FUNC3 (p_msg, 0, len);

        p_msg->hdr.event        = BTA_DM_API_SCAN_FILTER_ENABLE_EVT;
        p_msg->action       = action;
        p_msg->ref_value    = ref_value;
        p_msg->p_filt_status_cback = p_cmpl_cback;

        FUNC2(p_msg);
    }
#else
    UNUSED(action);
    UNUSED(p_cmpl_cback);
    UNUSED(ref_value);
#endif
}