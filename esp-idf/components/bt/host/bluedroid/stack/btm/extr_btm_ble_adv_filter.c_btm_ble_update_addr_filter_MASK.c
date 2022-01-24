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
typedef  int /*<<< orphan*/  tBTM_BLE_PF_FILT_INDEX ;
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/  bda; } ;
struct TYPE_5__ {TYPE_2__ target_addr; } ;
typedef  TYPE_1__ tBTM_BLE_PF_COND_PARAM ;
typedef  TYPE_2__ tBLE_BD_ADDR ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_7__ {int /*<<< orphan*/  cur_filter_target; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int BTM_BLE_ADV_FILT_META_HDR_LENGTH ; 
 int BTM_BLE_META_ADDR_LEN ; 
 int /*<<< orphan*/  BTM_BLE_META_PF_ADDR ; 
 int /*<<< orphan*/  BTM_BLE_SCAN_COND_ADD ; 
 int /*<<< orphan*/  BTM_BLE_SCAN_COND_DELETE ; 
 int /*<<< orphan*/  BTM_ILLEGAL_VALUE ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_BLE_ADV_FILTER_OCF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__ btm_ble_adv_filt_cb ; 
 int /*<<< orphan*/  btm_ble_scan_pf_cmpl_cback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

tBTM_STATUS FUNC5(tBTM_BLE_SCAN_COND_OP action,
                                       tBTM_BLE_PF_FILT_INDEX filt_index,
                                       tBTM_BLE_PF_COND_PARAM *p_cond)
{
    UINT8       param[BTM_BLE_META_ADDR_LEN + BTM_BLE_ADV_FILT_META_HDR_LENGTH],
                * p = param;
    tBTM_STATUS st = BTM_ILLEGAL_VALUE;
    tBLE_BD_ADDR *p_addr = (p_cond == NULL) ? NULL : &p_cond->target_addr;

    FUNC4(param, 0, BTM_BLE_META_ADDR_LEN + BTM_BLE_ADV_FILT_META_HDR_LENGTH);

    FUNC3(p, BTM_BLE_META_PF_ADDR);
    FUNC3(p, action);

    /* Filter index */
    FUNC3(p, filt_index);

    if (BTM_BLE_SCAN_COND_ADD == action ||
            BTM_BLE_SCAN_COND_DELETE == action) {
        if (NULL == p_addr) {
            return st;
        }

        FUNC0(p, p_addr->bda);
        FUNC3(p, p_addr->type);
    }
    /* send address filter */
    if ((st = FUNC2 (HCI_BLE_ADV_FILTER_OCF,
                                         (UINT8)(BTM_BLE_ADV_FILT_META_HDR_LENGTH + BTM_BLE_META_ADDR_LEN),
                                         param,
                                         btm_ble_scan_pf_cmpl_cback)) != BTM_NO_RESOURCES) {
        FUNC4(&btm_ble_adv_filt_cb.cur_filter_target, 0, sizeof(tBLE_BD_ADDR));
    } else {
        FUNC1("Broadcaster Address Filter Update failed");
    }
    return st;
}