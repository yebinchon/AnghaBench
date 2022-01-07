
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ tot_scan_results_strg; } ;
typedef TYPE_1__ tBTM_BLE_VSC_CB ;
typedef int tBTM_BLE_SCAN_THRESHOLD_CBACK ;
typedef int tBTM_BLE_SCAN_SETUP_CBACK ;
typedef int tBTM_BLE_SCAN_REP_CBACK ;
typedef int tBTM_BLE_REF_VALUE ;
typedef scalar_t__ UINT8 ;
struct TYPE_7__ {scalar_t__ cur_state; int ref_value; int * p_scan_rep_cback; int * p_thres_cback; int * p_setup_cback; } ;
struct TYPE_6__ {int (* supports_ble ) () ;} ;


 scalar_t__ BTM_BLE_ADV_SCAN_FULL_MAX ;
 scalar_t__ BTM_BLE_ADV_SCAN_THR_MAX ;
 scalar_t__ BTM_BLE_ADV_SCAN_TRUNC_MAX ;
 int BTM_BLE_BATCH_SCAN_CFG_STRG_EVT ;
 int BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE ;
 int BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM ;
 scalar_t__ BTM_BLE_SCAN_DISABLED_STATE ;
 scalar_t__ BTM_BLE_SCAN_DISABLE_CALLED ;
 scalar_t__ BTM_BLE_SCAN_ENABLE_CALLED ;
 scalar_t__ BTM_BLE_SCAN_INVALID_STATE ;
 int BTM_BleGetVendorCapabilities (TYPE_1__*) ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_ERR_PROCESSING ;
 scalar_t__ BTM_ILLEGAL_VALUE ;
 scalar_t__ BTM_NO_RESOURCES ;
 int BTM_TRACE_ERROR (char*) ;
 int BTM_TRACE_EVENT (char*,scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int TRUE ;
 TYPE_3__ ble_batchscan_cb ;
 int btm_ble_batchscan_enq_op_q (int ,scalar_t__,int ,int ) ;
 scalar_t__ btm_ble_enable_disable_batchscan (int ) ;
 scalar_t__ btm_ble_set_storage_config (scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_2__* controller_get_interface () ;
 int stub1 () ;

tBTM_STATUS BTM_BleSetStorageConfig(UINT8 batch_scan_full_max, UINT8 batch_scan_trunc_max,
                                    UINT8 batch_scan_notify_threshold,
                                    tBTM_BLE_SCAN_SETUP_CBACK *p_setup_cback,
                                    tBTM_BLE_SCAN_THRESHOLD_CBACK *p_thres_cback,
                                    tBTM_BLE_SCAN_REP_CBACK *p_rep_cback,
                                    tBTM_BLE_REF_VALUE ref_value)
{
    tBTM_STATUS status = BTM_NO_RESOURCES;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;

    BTM_TRACE_EVENT (" BTM_BleSetStorageConfig: %d, %d, %d, %d, %d",
                     ble_batchscan_cb.cur_state, ref_value, batch_scan_full_max, batch_scan_trunc_max,
                     batch_scan_notify_threshold);

    if (!controller_get_interface()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    BTM_BleGetVendorCapabilities(&cmn_ble_vsc_cb);

    if (0 == cmn_ble_vsc_cb.tot_scan_results_strg) {
        BTM_TRACE_ERROR("Controller does not support batch scan");
        return BTM_ERR_PROCESSING;
    }

    ble_batchscan_cb.p_setup_cback = p_setup_cback;
    ble_batchscan_cb.p_thres_cback = p_thres_cback;
    ble_batchscan_cb.p_scan_rep_cback = p_rep_cback;
    ble_batchscan_cb.ref_value = ref_value;

    if (batch_scan_full_max > BTM_BLE_ADV_SCAN_FULL_MAX ||
            batch_scan_trunc_max > BTM_BLE_ADV_SCAN_TRUNC_MAX ||
            batch_scan_notify_threshold > BTM_BLE_ADV_SCAN_THR_MAX) {
        BTM_TRACE_ERROR("Illegal set storage config params");
        return BTM_ILLEGAL_VALUE;
    }

    if (BTM_BLE_SCAN_INVALID_STATE == ble_batchscan_cb.cur_state ||
            BTM_BLE_SCAN_DISABLED_STATE == ble_batchscan_cb.cur_state ||
            BTM_BLE_SCAN_DISABLE_CALLED == ble_batchscan_cb.cur_state) {
        status = btm_ble_enable_disable_batchscan(TRUE);
        if (BTM_CMD_STARTED != status) {
            return status;
        }

        ble_batchscan_cb.cur_state = BTM_BLE_SCAN_ENABLE_CALLED;
        btm_ble_batchscan_enq_op_q(BTM_BLE_BATCH_SCAN_ENB_DISAB_CUST_FEATURE,
                                   BTM_BLE_SCAN_ENABLE_CALLED, 0, ref_value);
    }

    status = btm_ble_set_storage_config(batch_scan_full_max, batch_scan_trunc_max,
                                        batch_scan_notify_threshold);
    if (BTM_CMD_STARTED != status) {
        return status;
    }

    btm_ble_batchscan_enq_op_q(BTM_BLE_BATCH_SCAN_SET_STORAGE_PARAM, ble_batchscan_cb.cur_state,
                               BTM_BLE_BATCH_SCAN_CFG_STRG_EVT, ref_value);

    return status;
}
