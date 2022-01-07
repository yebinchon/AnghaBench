
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef scalar_t__ tBTM_BLE_SCAN_COND_OP ;
typedef int tBTM_BLE_REF_VALUE ;
struct TYPE_10__ {int uuid128; int uuid32; int uuid16; } ;
struct TYPE_12__ {scalar_t__ len; TYPE_1__ uu; } ;
struct TYPE_13__ {TYPE_6__* p_target_addr; TYPE_3__ uuid; TYPE_2__* p_uuid_mask; } ;
typedef TYPE_4__ tBTM_BLE_PF_UUID_COND ;
typedef scalar_t__ tBTM_BLE_PF_FILT_INDEX ;
typedef scalar_t__ tBTM_BLE_PF_COND_TYPE ;
struct TYPE_14__ {TYPE_4__ solicitate_uuid; TYPE_4__ srvc_uuid; } ;
typedef TYPE_5__ tBTM_BLE_PF_COND_PARAM ;
typedef int tBTM_BLE_FILT_CB_EVT ;
typedef int tBLE_BD_ADDR ;
typedef scalar_t__ UINT8 ;
struct TYPE_16__ {scalar_t__ cur_filter_target; } ;
struct TYPE_15__ {scalar_t__ type; int bda; } ;
struct TYPE_11__ {int uuid128_mask; int uuid32_mask; int uuid16_mask; } ;


 int ARRAY_TO_STREAM (scalar_t__*,int ,scalar_t__) ;
 int BDADDR_TO_STREAM (scalar_t__*,int ) ;
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
 int BTM_ILLEGAL_VALUE ;
 int BTM_NO_RESOURCES ;
 int BTM_TRACE_DEBUG (char*,...) ;
 int BTM_TRACE_ERROR (char*,...) ;
 int BTM_VendorSpecificCommand (int ,scalar_t__,scalar_t__*,int ) ;
 int HCI_BLE_ADV_FILTER_OCF ;
 scalar_t__ LEN_UUID_128 ;
 scalar_t__ LEN_UUID_16 ;
 scalar_t__ LEN_UUID_32 ;
 int UINT16_TO_STREAM (scalar_t__*,int ) ;
 int UINT32_TO_STREAM (scalar_t__*,int ) ;
 int UINT8_TO_STREAM (scalar_t__*,scalar_t__) ;
 TYPE_9__ btm_ble_adv_filt_cb ;
 int btm_ble_advfilt_enq_op_q (scalar_t__,scalar_t__,int ,int ,int *,int *) ;
 int * btm_ble_find_addr_filter_counter (TYPE_6__*) ;
 int btm_ble_scan_pf_cmpl_cback ;
 int memcpy (scalar_t__*,TYPE_6__*,int) ;
 int memset (scalar_t__*,int,int) ;

tBTM_STATUS btm_ble_update_uuid_filter(tBTM_BLE_SCAN_COND_OP action,
                                       tBTM_BLE_PF_FILT_INDEX filt_index,
                                       tBTM_BLE_PF_COND_TYPE filter_type,
                                       tBTM_BLE_PF_COND_PARAM *p_cond,
                                       tBTM_BLE_FILT_CB_EVT cb_evt,
                                       tBTM_BLE_REF_VALUE ref_value)
{
    UINT8 param[BTM_BLE_META_UUID_LEN + BTM_BLE_ADV_FILT_META_HDR_LENGTH],
                * p = param,
                  len = BTM_BLE_ADV_FILT_META_HDR_LENGTH;
    tBTM_STATUS st = BTM_ILLEGAL_VALUE;
    tBTM_BLE_PF_UUID_COND *p_uuid_cond;
    UINT8 evt_type;

    memset(param, 0, BTM_BLE_META_UUID_LEN + BTM_BLE_ADV_FILT_META_HDR_LENGTH);

    if (BTM_BLE_PF_SRVC_UUID == filter_type) {
        evt_type = BTM_BLE_META_PF_UUID;
        p_uuid_cond = p_cond ? &p_cond->srvc_uuid : ((void*)0);
    } else {
        evt_type = BTM_BLE_META_PF_SOL_UUID;
        p_uuid_cond = p_cond ? &p_cond->solicitate_uuid : ((void*)0);
    }

    if (((void*)0) == p_uuid_cond && action != BTM_BLE_SCAN_COND_CLEAR) {
        BTM_TRACE_ERROR("Illegal param for add/delete UUID filter");
        return st;
    }


    if (BTM_BLE_SCAN_COND_ADD == action && ((void*)0) != p_uuid_cond &&
            p_uuid_cond->p_target_addr &&
            btm_ble_find_addr_filter_counter(p_uuid_cond->p_target_addr) == ((void*)0)) {
        UINT8_TO_STREAM(p, BTM_BLE_META_PF_ADDR);
        UINT8_TO_STREAM(p, action);


        UINT8_TO_STREAM(p, filt_index);

        BDADDR_TO_STREAM(p, p_uuid_cond->p_target_addr->bda);
        UINT8_TO_STREAM(p, p_uuid_cond->p_target_addr->type);


        if ((st = BTM_VendorSpecificCommand (HCI_BLE_ADV_FILTER_OCF,
                                             (UINT8)(BTM_BLE_ADV_FILT_META_HDR_LENGTH + BTM_BLE_META_ADDR_LEN),
                                             param,
                                             btm_ble_scan_pf_cmpl_cback)) == BTM_NO_RESOURCES) {
            BTM_TRACE_ERROR("Update Address filter into controller failed.");
            return st;
        }

        btm_ble_advfilt_enq_op_q(action, BTM_BLE_META_PF_ADDR, cb_evt, ref_value, ((void*)0), ((void*)0));
        BTM_TRACE_DEBUG("Updated Address filter");
    }

    p = param;
    UINT8_TO_STREAM(p, evt_type);
    UINT8_TO_STREAM(p, action);


    UINT8_TO_STREAM(p, filt_index);

    if ((BTM_BLE_SCAN_COND_ADD == action ||
            BTM_BLE_SCAN_COND_DELETE == action) &&
            ((void*)0) != p_uuid_cond) {
        if (p_uuid_cond->uuid.len == LEN_UUID_16) {
            UINT16_TO_STREAM(p, p_uuid_cond->uuid.uu.uuid16);
            len += LEN_UUID_16;
        } else if (p_uuid_cond->uuid.len == LEN_UUID_32) {
            UINT32_TO_STREAM(p, p_uuid_cond->uuid.uu.uuid32);
            len += LEN_UUID_32;
        } else if (p_uuid_cond->uuid.len == LEN_UUID_128) {
            ARRAY_TO_STREAM (p, p_uuid_cond->uuid.uu.uuid128, LEN_UUID_128);
            len += LEN_UUID_128;
        } else {
            BTM_TRACE_ERROR("illegal UUID length: %d", p_uuid_cond->uuid.len);
            return BTM_ILLEGAL_VALUE;
        }

        if (((void*)0) != p_uuid_cond->p_uuid_mask) {
            if (p_uuid_cond->uuid.len == LEN_UUID_16) {
                UINT16_TO_STREAM(p, p_uuid_cond->p_uuid_mask->uuid16_mask);
                len += LEN_UUID_16;
            } else if (p_uuid_cond->uuid.len == LEN_UUID_32) {
                UINT32_TO_STREAM(p, p_uuid_cond->p_uuid_mask->uuid32_mask);
                len += LEN_UUID_32;
            } else if (p_uuid_cond->uuid.len == LEN_UUID_128) {
                ARRAY_TO_STREAM (p, p_uuid_cond->p_uuid_mask->uuid128_mask, LEN_UUID_128);
                len += LEN_UUID_128;
            }
        } else {
            memset(p, 0xff, p_uuid_cond->uuid.len);
            len += p_uuid_cond->uuid.len;
        }
        BTM_TRACE_DEBUG("btm_ble_update_uuid_filter : %d, %d, %d, %d", filter_type, evt_type,
                        p_uuid_cond->uuid.len, len);
    }


    if ((st = BTM_VendorSpecificCommand (HCI_BLE_ADV_FILTER_OCF,
                                         len,
                                         param,
                                         btm_ble_scan_pf_cmpl_cback)) != BTM_NO_RESOURCES) {
        if (p_uuid_cond && p_uuid_cond->p_target_addr) {
            memcpy(&btm_ble_adv_filt_cb.cur_filter_target, p_uuid_cond->p_target_addr,
                   sizeof(tBLE_BD_ADDR));
        }
        else {
            memset(&btm_ble_adv_filt_cb.cur_filter_target, 0, sizeof(tBLE_BD_ADDR));
        }
    } else {
        BTM_TRACE_ERROR("UUID filter udpating failed");
    }

    return st;
}
