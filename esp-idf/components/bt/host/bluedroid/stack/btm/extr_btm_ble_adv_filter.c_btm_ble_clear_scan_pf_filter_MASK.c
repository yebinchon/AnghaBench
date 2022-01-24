#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTM_STATUS ;
typedef  scalar_t__ tBTM_BLE_SCAN_COND_OP ;
typedef  int /*<<< orphan*/  tBTM_BLE_REF_VALUE ;
typedef  scalar_t__ tBTM_BLE_PF_FILT_INDEX ;
typedef  int /*<<< orphan*/  tBTM_BLE_PF_COUNT ;
struct TYPE_4__ {int /*<<< orphan*/  target_addr; } ;
typedef  TYPE_1__ tBTM_BLE_PF_COND_PARAM ;
typedef  int /*<<< orphan*/  tBTM_BLE_PF_CFG_CBACK ;
typedef  int /*<<< orphan*/  tBTM_BLE_FILT_CB_EVT ;
typedef  int /*<<< orphan*/  tBLE_BD_ADDR ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_5__ {int /*<<< orphan*/  cur_filter_target; } ;

/* Variables and functions */
 scalar_t__ BTM_BLE_ADV_FILT_META_HDR_LENGTH ; 
 scalar_t__ BTM_BLE_META_PF_FEAT_SEL ; 
 int /*<<< orphan*/  BTM_BLE_META_PF_LOCAL_NAME ; 
 int /*<<< orphan*/  BTM_BLE_META_PF_MANU_DATA ; 
 int /*<<< orphan*/  BTM_BLE_META_PF_SOL_UUID ; 
 int /*<<< orphan*/  BTM_BLE_META_PF_SRVC_DATA ; 
 int /*<<< orphan*/  BTM_BLE_META_PF_UUID ; 
 scalar_t__ BTM_BLE_PF_FEAT_SEL_LEN ; 
 scalar_t__ BTM_BLE_PF_LOGIC_OR ; 
 int /*<<< orphan*/  BTM_BLE_PF_MANU_DATA ; 
 int /*<<< orphan*/  BTM_BLE_PF_SELECT_NONE ; 
 int /*<<< orphan*/  BTM_BLE_PF_SRVC_DATA_PATTERN ; 
 int /*<<< orphan*/  BTM_BLE_PF_SRVC_SOL_UUID ; 
 int /*<<< orphan*/  BTM_BLE_PF_SRVC_UUID ; 
 scalar_t__ BTM_BLE_SCAN_COND_CLEAR ; 
 scalar_t__ BTM_CMD_STARTED ; 
 scalar_t__ BTM_ILLEGAL_VALUE ; 
 scalar_t__ BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ BTM_WRONG_MODE ; 
 int /*<<< orphan*/  HCI_BLE_ADV_FILTER_OCF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_3__ btm_ble_adv_filt_cb ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btm_ble_scan_pf_cmpl_cback ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

tBTM_STATUS FUNC12(tBTM_BLE_SCAN_COND_OP action,
        tBTM_BLE_PF_FILT_INDEX filt_index,
        tBTM_BLE_PF_COND_PARAM *p_cond,
        tBTM_BLE_PF_CFG_CBACK *p_cmpl_cback,
        tBTM_BLE_FILT_CB_EVT cb_evt,
        tBTM_BLE_REF_VALUE ref_value)
{
    tBLE_BD_ADDR *p_target = (p_cond == NULL) ? NULL : &p_cond->target_addr;
    tBTM_BLE_PF_COUNT *p_bda_filter;
    tBTM_STATUS     st = BTM_WRONG_MODE;
    UINT8           param[20], *p;

    if (BTM_BLE_SCAN_COND_CLEAR != action) {
        FUNC0("unable to perform action:%d for generic adv filter type", action);
        return BTM_ILLEGAL_VALUE;
    }

    p = param;
    FUNC11(param, 0, 20);

    p_bda_filter = FUNC5(p_target);

    if (NULL == p_bda_filter ||
            /* not a generic filter */
            (p_target != NULL && p_bda_filter)) {
        FUNC0("Error: Can not clear filter, No PF filter has been configured!");
        return st;
    }

    /* clear the general filter entry */
    if (NULL == p_target) {
        /* clear manufactuer data filter */
        st = FUNC7(BTM_BLE_SCAN_COND_CLEAR, filt_index, NULL,
                                         BTM_BLE_PF_MANU_DATA, cb_evt, ref_value);
        if (BTM_CMD_STARTED == st) {
            FUNC4(action, BTM_BLE_META_PF_MANU_DATA, cb_evt,
                                     ref_value, NULL, NULL);
        }

        /* clear local name filter */
        st = FUNC6(BTM_BLE_SCAN_COND_CLEAR, filt_index, NULL);
        if (BTM_CMD_STARTED == st) {
            FUNC4(action, BTM_BLE_META_PF_LOCAL_NAME, cb_evt,
                                     ref_value, NULL, NULL);
        }

        /* update the counter for service data */
        st = FUNC8(BTM_BLE_SCAN_COND_CLEAR, filt_index, NULL);

        /* clear UUID filter */
        st = FUNC9(BTM_BLE_SCAN_COND_CLEAR, filt_index,
                                        BTM_BLE_PF_SRVC_UUID, NULL, cb_evt, ref_value);
        if (BTM_CMD_STARTED == st) {
            FUNC4(action, BTM_BLE_META_PF_UUID, cb_evt, ref_value, NULL, NULL);
        }

        st = FUNC9(BTM_BLE_SCAN_COND_CLEAR, filt_index,
                                        BTM_BLE_PF_SRVC_SOL_UUID, NULL, cb_evt, ref_value);
        if (BTM_CMD_STARTED == st) {
            FUNC4(action, BTM_BLE_META_PF_SOL_UUID, cb_evt,
                                     ref_value, NULL, NULL);
        }

        /* clear service data filter */
        st = FUNC7(BTM_BLE_SCAN_COND_CLEAR, filt_index, NULL,
                                         BTM_BLE_PF_SRVC_DATA_PATTERN, cb_evt, ref_value);
        if (BTM_CMD_STARTED == st) {
            FUNC4(action, BTM_BLE_META_PF_SRVC_DATA, cb_evt,
                                     ref_value, NULL, NULL);
        }
    }

    /* select feature based on control block settings */
    FUNC3(p, BTM_BLE_META_PF_FEAT_SEL);
    FUNC3(p, BTM_BLE_SCAN_COND_CLEAR);

    /* Filter index */
    FUNC3(p, filt_index);

    /* set PCF selection */
    FUNC2(p, BTM_BLE_PF_SELECT_NONE);
    /* set logic condition as OR as default */
    FUNC3(p, BTM_BLE_PF_LOGIC_OR);

    if ((st = FUNC1 (HCI_BLE_ADV_FILTER_OCF,
                                         (UINT8)(BTM_BLE_ADV_FILT_META_HDR_LENGTH + BTM_BLE_PF_FEAT_SEL_LEN),
                                         param,
                                         btm_ble_scan_pf_cmpl_cback))
            != BTM_NO_RESOURCES) {
        if (p_target) {
            FUNC10(&btm_ble_adv_filt_cb.cur_filter_target, p_target, sizeof(tBLE_BD_ADDR));
        } else {
            FUNC11(&btm_ble_adv_filt_cb.cur_filter_target, 0, sizeof(tBLE_BD_ADDR));
        }
    }
    return st;
}