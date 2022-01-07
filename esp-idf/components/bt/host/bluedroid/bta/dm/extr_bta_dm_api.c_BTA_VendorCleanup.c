
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_filter; scalar_t__ tot_scan_results_strg; scalar_t__ adv_inst_max; } ;
typedef TYPE_1__ tBTM_BLE_VSC_CB ;


 int BTM_BleGetVendorCapabilities (TYPE_1__*) ;
 int btm_ble_adv_filter_cleanup () ;
 int btm_ble_batchscan_cleanup () ;
 int btm_ble_multi_adv_cleanup () ;
 int btm_ble_resolving_list_cleanup () ;

void BTA_VendorCleanup (void)
{
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;
    BTM_BleGetVendorCapabilities(&cmn_ble_vsc_cb);


    btm_ble_adv_filter_cleanup();
    if (cmn_ble_vsc_cb.tot_scan_results_strg > 0) {
        btm_ble_batchscan_cleanup();
    }


    if (cmn_ble_vsc_cb.adv_inst_max > 0) {
        btm_ble_multi_adv_cleanup();
    }
}
