
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tBTM_STATUS ;
typedef int tBTM_BLE_SCAN_COND_OP ;
typedef int tBTM_BLE_REF_VALUE ;
typedef int tBTM_BLE_PF_FILT_INDEX ;
typedef int tBTM_BLE_PF_COND_TYPE ;
typedef int tBTM_BLE_PF_COND_PARAM ;
typedef int tBTM_BLE_PF_CFG_CBACK ;
typedef int UINT8 ;


 int BTM_BLE_FILT_CFG ;
 int BTM_BLE_META_PF_FEAT_SEL ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_ILLEGAL_VALUE ;
 scalar_t__ BTM_SUCCESS ;
 int BTM_TRACE_EVENT (char*,int ,int,int ) ;
 int BTM_TRACE_WARNING (char*,int) ;
 int btm_ble_advfilt_enq_op_q (int ,int ,int ,int ,int *,int *) ;
 scalar_t__ btm_ble_clear_scan_pf_filter (int ,int ,int *,int *,int ,int ) ;
 int btm_ble_condtype_to_ocf (int) ;
 scalar_t__ btm_ble_obtain_vsc_details () ;
 scalar_t__ btm_ble_update_addr_filter (int ,int ,int *) ;
 scalar_t__ btm_ble_update_pf_local_name (int ,int ,int *) ;
 scalar_t__ btm_ble_update_pf_manu_data (int ,int ,int *,int,int ,int ) ;
 scalar_t__ btm_ble_update_srvc_data_change (int ,int ,int *) ;
 scalar_t__ btm_ble_update_uuid_filter (int ,int ,int,int *,int ,int ) ;

tBTM_STATUS BTM_BleCfgFilterCondition(tBTM_BLE_SCAN_COND_OP action,
                                      tBTM_BLE_PF_COND_TYPE cond_type,
                                      tBTM_BLE_PF_FILT_INDEX filt_index,
                                      tBTM_BLE_PF_COND_PARAM *p_cond,
                                      tBTM_BLE_PF_CFG_CBACK *p_cmpl_cback,
                                      tBTM_BLE_REF_VALUE ref_value)
{
    tBTM_STATUS st = BTM_ILLEGAL_VALUE;
    UINT8 ocf = 0;
    BTM_TRACE_EVENT (" BTM_BleCfgFilterCondition action:%d, cond_type:%d, index:%d", action,
                     cond_type, filt_index);

    if (BTM_SUCCESS != btm_ble_obtain_vsc_details()) {
        return st;
    }

    switch (cond_type) {

    case 131:

    case 133:
        st = btm_ble_update_pf_manu_data(action, filt_index, p_cond, cond_type, 0, ref_value);
        break;


    case 134:
        st = btm_ble_update_pf_local_name(action, filt_index, p_cond);
        break;


    case 135:
        st = btm_ble_update_addr_filter(action, filt_index, p_cond);
        break;


    case 129:
    case 130:
        st = btm_ble_update_uuid_filter(action, filt_index, cond_type, p_cond, 0, ref_value);
        break;

    case 132:
        st = btm_ble_update_srvc_data_change(action, filt_index, p_cond);
        break;

    case 128:
        st = btm_ble_clear_scan_pf_filter(action, filt_index, p_cond, p_cmpl_cback,
                                          0, ref_value);
        break;

    default:
        BTM_TRACE_WARNING("condition type [%d] not supported currently.", cond_type);
        break;
    }

    if (BTM_CMD_STARTED == st && cond_type != 128) {
        ocf = btm_ble_condtype_to_ocf(cond_type);
        btm_ble_advfilt_enq_op_q(action, ocf, BTM_BLE_FILT_CFG, ref_value, p_cmpl_cback, ((void*)0));
    } else if (BTM_CMD_STARTED == st && 128 == cond_type) {
        btm_ble_advfilt_enq_op_q(action, BTM_BLE_META_PF_FEAT_SEL, BTM_BLE_FILT_CFG,
                                 ref_value, p_cmpl_cback, ((void*)0));
    }
    return st;
}
