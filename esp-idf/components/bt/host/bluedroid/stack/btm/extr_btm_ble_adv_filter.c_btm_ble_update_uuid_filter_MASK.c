#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  scalar_t__ tBTM_BLE_SCAN_COND_OP ;
typedef  int /*<<< orphan*/  tBTM_BLE_REF_VALUE ;
struct TYPE_10__ {int /*<<< orphan*/  uuid128; int /*<<< orphan*/  uuid32; int /*<<< orphan*/  uuid16; } ;
struct TYPE_12__ {scalar_t__ len; TYPE_1__ uu; } ;
struct TYPE_13__ {TYPE_6__* p_target_addr; TYPE_3__ uuid; TYPE_2__* p_uuid_mask; } ;
typedef  TYPE_4__ tBTM_BLE_PF_UUID_COND ;
typedef  scalar_t__ tBTM_BLE_PF_FILT_INDEX ;
typedef  scalar_t__ tBTM_BLE_PF_COND_TYPE ;
struct TYPE_14__ {TYPE_4__ solicitate_uuid; TYPE_4__ srvc_uuid; } ;
typedef  TYPE_5__ tBTM_BLE_PF_COND_PARAM ;
typedef  int /*<<< orphan*/  tBTM_BLE_FILT_CB_EVT ;
typedef  int /*<<< orphan*/  tBLE_BD_ADDR ;
typedef  scalar_t__ UINT8 ;
struct TYPE_16__ {scalar_t__ cur_filter_target; } ;
struct TYPE_15__ {scalar_t__ type; int /*<<< orphan*/  bda; } ;
struct TYPE_11__ {int /*<<< orphan*/  uuid128_mask; int /*<<< orphan*/  uuid32_mask; int /*<<< orphan*/  uuid16_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int BTM_BLE_ADV_FILT_META_HDR_LENGTH ; 
 int BTM_BLE_META_ADDR_LEN ; 
 scalar_t__ BTM_BLE_META_PF_ADDR ; 
 scalar_t__ BTM_BLE_META_PF_SOL_UUID ; 
 scalar_t__ BTM_BLE_META_PF_UUID ; 
 int BTM_BLE_META_UUID_LEN ; 
 scalar_t__ BTM_BLE_PF_SRVC_UUID ; 
 scalar_t__ BTM_BLE_SCAN_COND_ADD ; 
 scalar_t__ BTM_BLE_SCAN_COND_CLEAR ; 
 scalar_t__ BTM_BLE_SCAN_COND_DELETE ; 
 int /*<<< orphan*/  BTM_ILLEGAL_VALUE ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_BLE_ADV_FILTER_OCF ; 
 scalar_t__ LEN_UUID_128 ; 
 scalar_t__ LEN_UUID_16 ; 
 scalar_t__ LEN_UUID_32 ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__) ; 
 TYPE_9__ btm_ble_adv_filt_cb ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  btm_ble_scan_pf_cmpl_cback ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int,int) ; 

tBTM_STATUS FUNC12(tBTM_BLE_SCAN_COND_OP action,
                                       tBTM_BLE_PF_FILT_INDEX filt_index,
                                       tBTM_BLE_PF_COND_TYPE filter_type,
                                       tBTM_BLE_PF_COND_PARAM *p_cond,
                                       tBTM_BLE_FILT_CB_EVT cb_evt,
                                       tBTM_BLE_REF_VALUE ref_value)
{
    UINT8       param[BTM_BLE_META_UUID_LEN + BTM_BLE_ADV_FILT_META_HDR_LENGTH],
                * p = param,
                  len = BTM_BLE_ADV_FILT_META_HDR_LENGTH;
    tBTM_STATUS st = BTM_ILLEGAL_VALUE;
    tBTM_BLE_PF_UUID_COND *p_uuid_cond;
    UINT8           evt_type;

    FUNC11(param, 0, BTM_BLE_META_UUID_LEN + BTM_BLE_ADV_FILT_META_HDR_LENGTH);

    if (BTM_BLE_PF_SRVC_UUID == filter_type) {
        evt_type = BTM_BLE_META_PF_UUID;
        p_uuid_cond = p_cond ? &p_cond->srvc_uuid : NULL;
    } else {
        evt_type = BTM_BLE_META_PF_SOL_UUID;
        p_uuid_cond = p_cond ? &p_cond->solicitate_uuid : NULL;
    }

    if (NULL == p_uuid_cond && action != BTM_BLE_SCAN_COND_CLEAR) {
        FUNC3("Illegal param for add/delete UUID filter");
        return st;
    }

    /* need to add address filter first, if adding per bda UUID filter without address filter */
    if (BTM_BLE_SCAN_COND_ADD == action && NULL != p_uuid_cond &&
            p_uuid_cond->p_target_addr &&
            FUNC9(p_uuid_cond->p_target_addr) == NULL) {
        FUNC7(p, BTM_BLE_META_PF_ADDR);
        FUNC7(p, action);

        /* Filter index */
        FUNC7(p, filt_index);

        FUNC1(p, p_uuid_cond->p_target_addr->bda);
        FUNC7(p, p_uuid_cond->p_target_addr->type);

        /* send address filter */
        if ((st = FUNC4 (HCI_BLE_ADV_FILTER_OCF,
                                             (UINT8)(BTM_BLE_ADV_FILT_META_HDR_LENGTH + BTM_BLE_META_ADDR_LEN),
                                             param,
                                             btm_ble_scan_pf_cmpl_cback)) == BTM_NO_RESOURCES) {
            FUNC3("Update Address filter into controller failed.");
            return st;
        }

        FUNC8(action, BTM_BLE_META_PF_ADDR, cb_evt, ref_value, NULL, NULL);
        FUNC2("Updated Address filter");
    }

    p = param;
    FUNC7(p, evt_type);
    FUNC7(p, action);

    /* Filter index */
    FUNC7(p, filt_index);

    if ((BTM_BLE_SCAN_COND_ADD == action ||
            BTM_BLE_SCAN_COND_DELETE == action) &&
            NULL != p_uuid_cond) {
        if (p_uuid_cond->uuid.len == LEN_UUID_16) {
            FUNC5(p, p_uuid_cond->uuid.uu.uuid16);
            len += LEN_UUID_16;
        } else if (p_uuid_cond->uuid.len == LEN_UUID_32) { /*4 bytes */
            FUNC6(p, p_uuid_cond->uuid.uu.uuid32);
            len += LEN_UUID_32;
        } else if (p_uuid_cond->uuid.len == LEN_UUID_128) {
            FUNC0 (p, p_uuid_cond->uuid.uu.uuid128, LEN_UUID_128);
            len += LEN_UUID_128;
        } else {
            FUNC3("illegal UUID length: %d", p_uuid_cond->uuid.len);
            return BTM_ILLEGAL_VALUE;
        }

        if (NULL != p_uuid_cond->p_uuid_mask) {
            if (p_uuid_cond->uuid.len == LEN_UUID_16) {
                FUNC5(p, p_uuid_cond->p_uuid_mask->uuid16_mask);
                len += LEN_UUID_16;
            } else if (p_uuid_cond->uuid.len == LEN_UUID_32) { /*4 bytes */
                FUNC6(p, p_uuid_cond->p_uuid_mask->uuid32_mask);
                len += LEN_UUID_32;
            } else if (p_uuid_cond->uuid.len == LEN_UUID_128) {
                FUNC0 (p, p_uuid_cond->p_uuid_mask->uuid128_mask, LEN_UUID_128);
                len += LEN_UUID_128;
            }
        } else {
            FUNC11(p, 0xff, p_uuid_cond->uuid.len);
            len += p_uuid_cond->uuid.len;
        }
        FUNC2("btm_ble_update_uuid_filter : %d, %d, %d, %d", filter_type, evt_type,
                        p_uuid_cond->uuid.len, len);
    }

    /* send UUID filter update */
    if ((st = FUNC4 (HCI_BLE_ADV_FILTER_OCF,
                                         len,
                                         param,
                                         btm_ble_scan_pf_cmpl_cback)) != BTM_NO_RESOURCES) {
        if (p_uuid_cond && p_uuid_cond->p_target_addr) {
            FUNC10(&btm_ble_adv_filt_cb.cur_filter_target, p_uuid_cond->p_target_addr,
                   sizeof(tBLE_BD_ADDR));
        }
        else {
            FUNC11(&btm_ble_adv_filt_cb.cur_filter_target, 0, sizeof(tBLE_BD_ADDR));
        }
    } else {
        FUNC3("UUID filter udpating failed");
    }

    return st;
}