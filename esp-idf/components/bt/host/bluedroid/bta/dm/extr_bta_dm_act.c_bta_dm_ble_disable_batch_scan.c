
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_10__ {scalar_t__ tot_scan_results_strg; } ;
typedef TYPE_3__ tBTM_BLE_VSC_CB ;
struct TYPE_9__ {int ref_value; } ;
struct TYPE_8__ {int ref_value; } ;
struct TYPE_11__ {TYPE_2__ ble_enable_scan; TYPE_1__ ble_disable_scan; } ;
typedef TYPE_4__ tBTA_DM_MSG ;


 int BTM_BLE_BATCH_SCAN_DISABLE_EVT ;
 scalar_t__ BTM_BleDisableBatchScan (int ) ;
 int BTM_BleGetVendorCapabilities (TYPE_3__*) ;
 scalar_t__ BTM_CMD_STARTED ;
 int UNUSED (TYPE_4__*) ;
 int bta_ble_scan_setup_cb (int ,int ,scalar_t__) ;

void bta_dm_ble_disable_batch_scan (tBTA_DM_MSG *p_data)
{
    UNUSED(p_data);
    tBTM_STATUS btm_status = 0;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;

    BTM_BleGetVendorCapabilities(&cmn_ble_vsc_cb);

    if (0 != cmn_ble_vsc_cb.tot_scan_results_strg) {
        btm_status = BTM_BleDisableBatchScan(p_data->ble_disable_scan.ref_value);
    }

    if (BTM_CMD_STARTED != btm_status) {
        bta_ble_scan_setup_cb(BTM_BLE_BATCH_SCAN_DISABLE_EVT, p_data->ble_enable_scan.ref_value,
                              btm_status);
    }
}
