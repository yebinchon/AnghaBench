
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
typedef int tBTM_BLE_REF_VALUE ;
typedef int tBTM_BLE_BATCH_SCAN_MODE ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_7__ {int scan_mode; int cur_state; } ;
struct TYPE_6__ {int (* supports_ble ) () ;} ;


 int BTM_BLE_BATCH_SCAN_MODE_ACTI ;
 int BTM_BLE_BATCH_SCAN_MODE_PASS ;
 int BTM_BleGetVendorCapabilities (TYPE_1__*) ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_ERR_PROCESSING ;
 scalar_t__ BTM_ILLEGAL_VALUE ;
 scalar_t__ BTM_NO_RESOURCES ;
 scalar_t__ BTM_SUCCESS ;
 int BTM_TRACE_ERROR (char*,...) ;
 int BTM_TRACE_EVENT (char*,int,int ) ;
 TYPE_3__ ble_batchscan_cb ;
 int btm_ble_batchscan_deq_rep_data (int,int *,int*,int**,int *) ;
 scalar_t__ btm_ble_batchscan_enq_rep_q (int,int ) ;
 scalar_t__ btm_ble_read_batchscan_reports (int,int ) ;
 TYPE_2__* controller_get_interface () ;
 int stub1 () ;

tBTM_STATUS BTM_BleReadScanReports(tBTM_BLE_BATCH_SCAN_MODE scan_mode,
                                   tBTM_BLE_REF_VALUE ref_value)
{
    tBTM_STATUS status = BTM_NO_RESOURCES;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;
    UINT8 read_scan_mode = 0;
    UINT8 *p_data = ((void*)0), num_records = 0;
    UINT16 data_len = 0;

    BTM_TRACE_EVENT (" BTM_BleReadScanReports; %d, %d", scan_mode, ref_value);

    if (!controller_get_interface()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    BTM_BleGetVendorCapabilities(&cmn_ble_vsc_cb);

    if (0 == cmn_ble_vsc_cb.tot_scan_results_strg) {
        BTM_TRACE_ERROR("Controller does not support batch scan");
        return BTM_ERR_PROCESSING;
    }


    read_scan_mode = ble_batchscan_cb.scan_mode & BTM_BLE_BATCH_SCAN_MODE_ACTI;
    if (0 == read_scan_mode) {
        read_scan_mode = ble_batchscan_cb.scan_mode & BTM_BLE_BATCH_SCAN_MODE_PASS;
    }


    if (read_scan_mode > 0 && (BTM_BLE_BATCH_SCAN_MODE_PASS == scan_mode ||
                               BTM_BLE_BATCH_SCAN_MODE_ACTI == scan_mode)) {
        status = btm_ble_batchscan_enq_rep_q(scan_mode, ref_value);
        if (BTM_SUCCESS == status) {
            status = btm_ble_read_batchscan_reports(scan_mode, ref_value);
            if (BTM_CMD_STARTED != status) {
                btm_ble_batchscan_deq_rep_data(scan_mode, &ref_value,
                                               &num_records, &p_data, &data_len);
            }
        }
    } else {
        BTM_TRACE_ERROR("Illegal read scan params: %d, %d, %d", read_scan_mode, scan_mode,
                        ble_batchscan_cb.cur_state);
        return BTM_ILLEGAL_VALUE;
    }
    return status;
}
