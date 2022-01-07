
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_9__ {scalar_t__ adv_inst_max; } ;
typedef TYPE_2__ tBTM_BLE_VSC_CB ;
typedef int tBTM_BLE_AD_MASK ;
struct TYPE_10__ {int flag; } ;
typedef TYPE_3__ tBTM_BLE_ADV_DATA ;
typedef scalar_t__ UINT8 ;
struct TYPE_8__ {int discoverable_mode; int connectable_mode; } ;
struct TYPE_11__ {TYPE_1__ btm_inq_vars; } ;
typedef scalar_t__ BOOLEAN ;


 int BTM_BLE_MULTI_ADV_DATA_EVT ;
 scalar_t__ BTM_BLE_MULTI_ADV_DEFAULT_STD ;
 scalar_t__ BTM_BLE_MULTI_ADV_MAX ;
 scalar_t__ BTM_BLE_MULTI_ADV_WRITE_ADV_DATA ;
 int BTM_BLE_MULTI_ADV_WRITE_DATA_LEN ;
 scalar_t__ BTM_BLE_MULTI_ADV_WRITE_SCAN_RSP_DATA ;
 int BTM_BleGetVendorCapabilities (TYPE_2__*) ;
 int BTM_CMD_STARTED ;
 int BTM_ERR_PROCESSING ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_TRACE_ERROR (char*) ;
 int BTM_TRACE_EVENT (char*,scalar_t__) ;
 int BTM_VendorSpecificCommand (int ,scalar_t__,scalar_t__*,int ) ;
 int HCI_BLE_MULTI_ADV_OCF ;
 int UINT8_TO_STREAM (scalar_t__*,scalar_t__) ;
 int btm_ble_build_adv_data (int *,scalar_t__**,TYPE_3__*) ;
 int btm_ble_multi_adv_enq_op_q (scalar_t__,scalar_t__,int ) ;
 int btm_ble_multi_adv_vsc_cmpl_cback ;
 int btm_ble_update_dmt_flag_bits (int *,int ,int ) ;
 TYPE_4__ btm_cb ;
 int memset (scalar_t__*,int ,int) ;

tBTM_STATUS BTM_BleCfgAdvInstData (UINT8 inst_id, BOOLEAN is_scan_rsp,
                                   tBTM_BLE_AD_MASK data_mask,
                                   tBTM_BLE_ADV_DATA *p_data)
{
    UINT8 param[BTM_BLE_MULTI_ADV_WRITE_DATA_LEN], *pp = param;
    UINT8 sub_code = (is_scan_rsp) ?
                           BTM_BLE_MULTI_ADV_WRITE_SCAN_RSP_DATA : BTM_BLE_MULTI_ADV_WRITE_ADV_DATA;
    UINT8 *p_len;
    tBTM_STATUS rt;
    UINT8 *pp_temp = (UINT8 *)(param + BTM_BLE_MULTI_ADV_WRITE_DATA_LEN - 1);
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;

    BTM_BleGetVendorCapabilities(&cmn_ble_vsc_cb);
    if (0 == cmn_ble_vsc_cb.adv_inst_max) {
        BTM_TRACE_ERROR("Controller does not support Multi ADV");
        return BTM_ERR_PROCESSING;
    }

    btm_ble_update_dmt_flag_bits(&p_data->flag, btm_cb.btm_inq_vars.connectable_mode,
                                 btm_cb.btm_inq_vars.discoverable_mode);

    BTM_TRACE_EVENT("BTM_BleCfgAdvInstData called with inst_id:%d", inst_id);
    if (inst_id > BTM_BLE_MULTI_ADV_MAX || inst_id == BTM_BLE_MULTI_ADV_DEFAULT_STD) {
        return BTM_ILLEGAL_VALUE;
    }

    memset(param, 0, BTM_BLE_MULTI_ADV_WRITE_DATA_LEN);

    UINT8_TO_STREAM(pp, sub_code);
    p_len = pp ++;
    btm_ble_build_adv_data(&data_mask, &pp, p_data);
    *p_len = (UINT8)(pp - param - 2);
    UINT8_TO_STREAM(pp_temp, inst_id);

    if ((rt = BTM_VendorSpecificCommand (HCI_BLE_MULTI_ADV_OCF,
                                         (UINT8)BTM_BLE_MULTI_ADV_WRITE_DATA_LEN,
                                         param,
                                         btm_ble_multi_adv_vsc_cmpl_cback))
            == BTM_CMD_STARTED) {
        btm_ble_multi_adv_enq_op_q(sub_code, inst_id, BTM_BLE_MULTI_ADV_DATA_EVT);
    }
    return rt;
}
