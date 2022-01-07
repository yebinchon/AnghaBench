
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_7__ {scalar_t__ tot_scan_results_strg; } ;
typedef TYPE_2__ tBTM_BLE_VSC_CB ;
struct TYPE_6__ {int ref_value; int p_read_rep_cback; int p_thres_cback; int p_setup_cback; int batch_scan_notify_threshold; int batch_scan_trunc_max; int batch_scan_full_max; } ;
struct TYPE_8__ {TYPE_1__ ble_set_storage; } ;
typedef TYPE_3__ tBTA_DM_MSG ;


 int BTM_BLE_BATCH_SCAN_CFG_STRG_EVT ;
 int BTM_BleGetVendorCapabilities (TYPE_2__*) ;
 scalar_t__ BTM_BleSetStorageConfig (int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ BTM_CMD_STARTED ;
 int bta_ble_scan_setup_cb (int ,int ,scalar_t__) ;

void bta_dm_ble_setup_storage (tBTA_DM_MSG *p_data)
{
    tBTM_STATUS btm_status = 0;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;

    BTM_BleGetVendorCapabilities(&cmn_ble_vsc_cb);

    if (0 != cmn_ble_vsc_cb.tot_scan_results_strg) {
        btm_status = BTM_BleSetStorageConfig(p_data->ble_set_storage.batch_scan_full_max,
                                             p_data->ble_set_storage.batch_scan_trunc_max,
                                             p_data->ble_set_storage.batch_scan_notify_threshold,
                                             p_data->ble_set_storage.p_setup_cback,
                                             p_data->ble_set_storage.p_thres_cback,
                                             p_data->ble_set_storage.p_read_rep_cback,
                                             p_data->ble_set_storage.ref_value);
    }

    if (BTM_CMD_STARTED != btm_status) {
        bta_ble_scan_setup_cb(BTM_BLE_BATCH_SCAN_CFG_STRG_EVT, p_data->ble_set_storage.ref_value,
                              btm_status);
    }
}
