
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
typedef scalar_t__ tBTM_BLE_SCAN_COND_OP ;
typedef int tBTM_BLE_REF_VALUE ;
typedef scalar_t__ tBTM_BLE_PF_FILT_INDEX ;
typedef int tBTM_BLE_PF_COUNT ;
struct TYPE_4__ {int target_addr; } ;
typedef TYPE_1__ tBTM_BLE_PF_COND_PARAM ;
typedef int tBTM_BLE_PF_CFG_CBACK ;
typedef int tBTM_BLE_FILT_CB_EVT ;
typedef int tBLE_BD_ADDR ;
typedef int UINT8 ;
struct TYPE_5__ {int cur_filter_target; } ;


 scalar_t__ BTM_BLE_ADV_FILT_META_HDR_LENGTH ;
 scalar_t__ BTM_BLE_META_PF_FEAT_SEL ;
 int BTM_BLE_META_PF_LOCAL_NAME ;
 int BTM_BLE_META_PF_MANU_DATA ;
 int BTM_BLE_META_PF_SOL_UUID ;
 int BTM_BLE_META_PF_SRVC_DATA ;
 int BTM_BLE_META_PF_UUID ;
 scalar_t__ BTM_BLE_PF_FEAT_SEL_LEN ;
 scalar_t__ BTM_BLE_PF_LOGIC_OR ;
 int BTM_BLE_PF_MANU_DATA ;
 int BTM_BLE_PF_SELECT_NONE ;
 int BTM_BLE_PF_SRVC_DATA_PATTERN ;
 int BTM_BLE_PF_SRVC_SOL_UUID ;
 int BTM_BLE_PF_SRVC_UUID ;
 scalar_t__ BTM_BLE_SCAN_COND_CLEAR ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_ILLEGAL_VALUE ;
 scalar_t__ BTM_NO_RESOURCES ;
 int BTM_TRACE_ERROR (char*,...) ;
 scalar_t__ BTM_VendorSpecificCommand (int ,int ,int *,int ) ;
 scalar_t__ BTM_WRONG_MODE ;
 int HCI_BLE_ADV_FILTER_OCF ;
 int UINT32_TO_STREAM (int *,int ) ;
 int UINT8_TO_STREAM (int *,scalar_t__) ;
 TYPE_3__ btm_ble_adv_filt_cb ;
 int btm_ble_advfilt_enq_op_q (scalar_t__,int ,int ,int ,int *,int *) ;
 int * btm_ble_find_addr_filter_counter (int *) ;
 int btm_ble_scan_pf_cmpl_cback ;
 scalar_t__ btm_ble_update_pf_local_name (scalar_t__,scalar_t__,int *) ;
 scalar_t__ btm_ble_update_pf_manu_data (scalar_t__,scalar_t__,int *,int ,int ,int ) ;
 scalar_t__ btm_ble_update_srvc_data_change (scalar_t__,scalar_t__,int *) ;
 scalar_t__ btm_ble_update_uuid_filter (scalar_t__,scalar_t__,int ,int *,int ,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

tBTM_STATUS btm_ble_clear_scan_pf_filter(tBTM_BLE_SCAN_COND_OP action,
        tBTM_BLE_PF_FILT_INDEX filt_index,
        tBTM_BLE_PF_COND_PARAM *p_cond,
        tBTM_BLE_PF_CFG_CBACK *p_cmpl_cback,
        tBTM_BLE_FILT_CB_EVT cb_evt,
        tBTM_BLE_REF_VALUE ref_value)
{
    tBLE_BD_ADDR *p_target = (p_cond == ((void*)0)) ? ((void*)0) : &p_cond->target_addr;
    tBTM_BLE_PF_COUNT *p_bda_filter;
    tBTM_STATUS st = BTM_WRONG_MODE;
    UINT8 param[20], *p;

    if (BTM_BLE_SCAN_COND_CLEAR != action) {
        BTM_TRACE_ERROR("unable to perform action:%d for generic adv filter type", action);
        return BTM_ILLEGAL_VALUE;
    }

    p = param;
    memset(param, 0, 20);

    p_bda_filter = btm_ble_find_addr_filter_counter(p_target);

    if (((void*)0) == p_bda_filter ||

            (p_target != ((void*)0) && p_bda_filter)) {
        BTM_TRACE_ERROR("Error: Can not clear filter, No PF filter has been configured!");
        return st;
    }


    if (((void*)0) == p_target) {

        st = btm_ble_update_pf_manu_data(BTM_BLE_SCAN_COND_CLEAR, filt_index, ((void*)0),
                                         BTM_BLE_PF_MANU_DATA, cb_evt, ref_value);
        if (BTM_CMD_STARTED == st) {
            btm_ble_advfilt_enq_op_q(action, BTM_BLE_META_PF_MANU_DATA, cb_evt,
                                     ref_value, ((void*)0), ((void*)0));
        }


        st = btm_ble_update_pf_local_name(BTM_BLE_SCAN_COND_CLEAR, filt_index, ((void*)0));
        if (BTM_CMD_STARTED == st) {
            btm_ble_advfilt_enq_op_q(action, BTM_BLE_META_PF_LOCAL_NAME, cb_evt,
                                     ref_value, ((void*)0), ((void*)0));
        }


        st = btm_ble_update_srvc_data_change(BTM_BLE_SCAN_COND_CLEAR, filt_index, ((void*)0));


        st = btm_ble_update_uuid_filter(BTM_BLE_SCAN_COND_CLEAR, filt_index,
                                        BTM_BLE_PF_SRVC_UUID, ((void*)0), cb_evt, ref_value);
        if (BTM_CMD_STARTED == st) {
            btm_ble_advfilt_enq_op_q(action, BTM_BLE_META_PF_UUID, cb_evt, ref_value, ((void*)0), ((void*)0));
        }

        st = btm_ble_update_uuid_filter(BTM_BLE_SCAN_COND_CLEAR, filt_index,
                                        BTM_BLE_PF_SRVC_SOL_UUID, ((void*)0), cb_evt, ref_value);
        if (BTM_CMD_STARTED == st) {
            btm_ble_advfilt_enq_op_q(action, BTM_BLE_META_PF_SOL_UUID, cb_evt,
                                     ref_value, ((void*)0), ((void*)0));
        }


        st = btm_ble_update_pf_manu_data(BTM_BLE_SCAN_COND_CLEAR, filt_index, ((void*)0),
                                         BTM_BLE_PF_SRVC_DATA_PATTERN, cb_evt, ref_value);
        if (BTM_CMD_STARTED == st) {
            btm_ble_advfilt_enq_op_q(action, BTM_BLE_META_PF_SRVC_DATA, cb_evt,
                                     ref_value, ((void*)0), ((void*)0));
        }
    }


    UINT8_TO_STREAM(p, BTM_BLE_META_PF_FEAT_SEL);
    UINT8_TO_STREAM(p, BTM_BLE_SCAN_COND_CLEAR);


    UINT8_TO_STREAM(p, filt_index);


    UINT32_TO_STREAM(p, BTM_BLE_PF_SELECT_NONE);

    UINT8_TO_STREAM(p, BTM_BLE_PF_LOGIC_OR);

    if ((st = BTM_VendorSpecificCommand (HCI_BLE_ADV_FILTER_OCF,
                                         (UINT8)(BTM_BLE_ADV_FILT_META_HDR_LENGTH + BTM_BLE_PF_FEAT_SEL_LEN),
                                         param,
                                         btm_ble_scan_pf_cmpl_cback))
            != BTM_NO_RESOURCES) {
        if (p_target) {
            memcpy(&btm_ble_adv_filt_cb.cur_filter_target, p_target, sizeof(tBLE_BD_ADDR));
        } else {
            memset(&btm_ble_adv_filt_cb.cur_filter_target, 0, sizeof(tBLE_BD_ADDR));
        }
    }
    return st;
}
