
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_8__ {scalar_t__ filter_support; } ;
typedef TYPE_2__ tBTM_BLE_VSC_CB ;
typedef int tBTM_BLE_PF_FILT_PARAMS ;
typedef int tBTA_STATUS ;
struct TYPE_7__ {int ref_value; int (* p_filt_param_cback ) (int ,int ,int ,int ) ;int p_target; int filt_params; int filt_index; int action; } ;
struct TYPE_9__ {TYPE_1__ ble_scan_filt_param_setup; } ;
typedef TYPE_3__ tBTA_DM_MSG ;
struct TYPE_10__ {int (* p_scan_filt_param_cback ) (int ,int ,int ,int ) ;} ;


 int APPL_TRACE_DEBUG (char*) ;
 int BTA_DM_BLE_PF_ENABLE_EVT ;
 int BTA_FAILURE ;
 int BTM_BleAdvFilterParamSetup (int ,int ,int *,int ,int (*) (int ,int ,int ,int ),int ) ;
 int BTM_BleGetVendorCapabilities (TYPE_2__*) ;
 int BTM_CMD_STARTED ;
 int BTM_MODE_UNSUPPORTED ;
 TYPE_5__ bta_dm_cb ;
 int stub1 (int ,int ,int ,int ) ;

void bta_dm_scan_filter_param_setup (tBTA_DM_MSG *p_data)
{
    tBTM_STATUS st = BTM_MODE_UNSUPPORTED;
    tBTA_STATUS status = BTA_FAILURE;

    tBTM_BLE_VSC_CB cmn_vsc_cb;

    APPL_TRACE_DEBUG("bta_dm_scan_filter_param_setup");
    BTM_BleGetVendorCapabilities(&cmn_vsc_cb);
    if (0 != cmn_vsc_cb.filter_support) {
        if ((st = BTM_BleAdvFilterParamSetup(p_data->ble_scan_filt_param_setup.action,
                                             p_data->ble_scan_filt_param_setup.filt_index,
                                             (tBTM_BLE_PF_FILT_PARAMS *)&p_data->ble_scan_filt_param_setup.filt_params,
                                             p_data->ble_scan_filt_param_setup.p_target,
                                             p_data->ble_scan_filt_param_setup.p_filt_param_cback,
                                             p_data->ble_scan_filt_param_setup.ref_value)) == BTM_CMD_STARTED) {
            bta_dm_cb.p_scan_filt_param_cback = p_data->ble_scan_filt_param_setup.p_filt_param_cback;
            return;
        }
    }

    if (p_data->ble_scan_filt_param_setup.p_filt_param_cback) {
        p_data->ble_scan_filt_param_setup.p_filt_param_cback (BTA_DM_BLE_PF_ENABLE_EVT, 0,
                p_data->ble_scan_filt_param_setup.ref_value, status);
    }

    return;
}
