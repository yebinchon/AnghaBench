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
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  tBTM_BLE_SCAN_COND_OP ;
struct TYPE_5__ {int data_len; int /*<<< orphan*/  p_data; } ;
typedef  TYPE_1__ tBTM_BLE_PF_LOCAL_NAME_COND ;
typedef  int /*<<< orphan*/  tBTM_BLE_PF_FILT_INDEX ;
struct TYPE_6__ {TYPE_1__ local_name; } ;
typedef  TYPE_2__ tBTM_BLE_PF_COND_PARAM ;
typedef  int /*<<< orphan*/  tBLE_BD_ADDR ;
typedef  int UINT8 ;
struct TYPE_7__ {int cur_filter_target; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int BTM_BLE_ADV_FILT_META_HDR_LENGTH ; 
 int /*<<< orphan*/  BTM_BLE_META_PF_LOCAL_NAME ; 
 int BTM_BLE_PF_STR_LEN_MAX ; 
 int /*<<< orphan*/  BTM_BLE_SCAN_COND_ADD ; 
 int /*<<< orphan*/  BTM_BLE_SCAN_COND_DELETE ; 
 int /*<<< orphan*/  BTM_ILLEGAL_VALUE ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_BLE_ADV_FILTER_OCF ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 TYPE_4__ btm_ble_adv_filt_cb ; 
 int /*<<< orphan*/  btm_ble_scan_pf_cmpl_cback ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 

tBTM_STATUS FUNC5(tBTM_BLE_SCAN_COND_OP action,
        tBTM_BLE_PF_FILT_INDEX filt_index,
        tBTM_BLE_PF_COND_PARAM *p_cond)
{
    tBTM_BLE_PF_LOCAL_NAME_COND *p_local_name = (p_cond == NULL) ? NULL : &p_cond->local_name;
    UINT8       param[BTM_BLE_PF_STR_LEN_MAX + BTM_BLE_ADV_FILT_META_HDR_LENGTH],
                *p = param,
                 len = BTM_BLE_ADV_FILT_META_HDR_LENGTH;
    tBTM_STATUS st = BTM_ILLEGAL_VALUE;

    FUNC4(param, 0, BTM_BLE_PF_STR_LEN_MAX + BTM_BLE_ADV_FILT_META_HDR_LENGTH);

    FUNC3(p, BTM_BLE_META_PF_LOCAL_NAME);
    FUNC3(p, action);

    /* Filter index */
    FUNC3(p, filt_index);

    if (BTM_BLE_SCAN_COND_ADD == action ||
            BTM_BLE_SCAN_COND_DELETE == action) {
        if (NULL == p_local_name) {
            return st;
        }

        if (p_local_name->data_len > BTM_BLE_PF_STR_LEN_MAX) {
            p_local_name->data_len = BTM_BLE_PF_STR_LEN_MAX;
        }

        FUNC0(p, p_local_name->p_data, p_local_name->data_len);
        len += p_local_name->data_len;
    }

    /* send local name filter */
    if ((st = FUNC2 (HCI_BLE_ADV_FILTER_OCF,
                                         len,
                                         param,
                                         btm_ble_scan_pf_cmpl_cback))
            != BTM_NO_RESOURCES) {
        FUNC4(&btm_ble_adv_filt_cb.cur_filter_target, 0, sizeof(tBLE_BD_ADDR));
    } else {
        FUNC1("Local Name PF filter update failed");
    }

    return st;
}