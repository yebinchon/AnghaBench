
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ tot_scan_results_strg; } ;
typedef TYPE_1__ tBTM_BLE_VSC_CB ;
typedef int tBTM_BLE_TRACK_ADV_CBACK ;
typedef int tBTM_BLE_REF_VALUE ;
struct TYPE_7__ {int ref_value; int * p_track_cback; } ;
struct TYPE_6__ {int (* supports_ble ) () ;} ;


 int BTM_BleGetVendorCapabilities (TYPE_1__*) ;
 int BTM_CMD_STARTED ;
 int BTM_ERR_PROCESSING ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_TRACE_ERROR (char*) ;
 int BTM_TRACE_EVENT (char*) ;
 TYPE_3__ ble_advtrack_cb ;
 TYPE_2__* controller_get_interface () ;
 int stub1 () ;

tBTM_STATUS BTM_BleTrackAdvertiser(tBTM_BLE_TRACK_ADV_CBACK *p_track_cback,
                                   tBTM_BLE_REF_VALUE ref_value)
{
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;
    BTM_TRACE_EVENT (" BTM_BleTrackAdvertiser");
    if (!controller_get_interface()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    BTM_BleGetVendorCapabilities(&cmn_ble_vsc_cb);

    if (0 == cmn_ble_vsc_cb.tot_scan_results_strg) {
        BTM_TRACE_ERROR("Controller does not support scan storage");
        return BTM_ERR_PROCESSING;
    }

    ble_advtrack_cb.p_track_cback = p_track_cback;
    ble_advtrack_cb.ref_value = ref_value;
    return BTM_CMD_STARTED;
}
