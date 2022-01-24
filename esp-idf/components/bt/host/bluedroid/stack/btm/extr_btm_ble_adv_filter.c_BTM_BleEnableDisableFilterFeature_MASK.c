#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  tBTM_BLE_REF_VALUE ;
typedef  int /*<<< orphan*/  tBTM_BLE_PF_STATUS_CBACK ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_2__ {int /*<<< orphan*/ * p_filt_stat_cback; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_BLE_FILT_ENABLE_DISABLE ; 
 int /*<<< orphan*/  BTM_BLE_META_PF_ENABLE ; 
 int /*<<< orphan*/  BTM_BLE_PCF_ENABLE_LEN ; 
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 scalar_t__ BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTM_WRONG_MODE ; 
 int /*<<< orphan*/  HCI_BLE_ADV_FILTER_OCF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ btm_ble_adv_filt_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  btm_ble_scan_pf_cmpl_cback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

tBTM_STATUS FUNC5(UINT8 enable,
        tBTM_BLE_PF_STATUS_CBACK *p_stat_cback,
        tBTM_BLE_REF_VALUE ref_value)
{
    UINT8           param[20], *p;
    tBTM_STATUS     st = BTM_WRONG_MODE;

    if (BTM_SUCCESS  != FUNC3()) {
        return st;
    }

    p = param;
    FUNC4(param, 0, 20);

    /* enable the content filter in controller */
    p = param;
    FUNC1(p, BTM_BLE_META_PF_ENABLE);
    /* enable adv data payload filtering */
    FUNC1(p, enable);

    if ((st = FUNC0 (HCI_BLE_ADV_FILTER_OCF,
                                         BTM_BLE_PCF_ENABLE_LEN, param,
                                         btm_ble_scan_pf_cmpl_cback)) == BTM_CMD_STARTED) {
        btm_ble_adv_filt_cb.p_filt_stat_cback = p_stat_cback;
        FUNC2(enable, BTM_BLE_META_PF_ENABLE, BTM_BLE_FILT_ENABLE_DISABLE,
                                 ref_value, NULL, NULL);
    }
    return st;
}