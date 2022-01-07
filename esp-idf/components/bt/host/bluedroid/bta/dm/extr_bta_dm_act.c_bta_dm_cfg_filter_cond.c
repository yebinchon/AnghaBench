
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
typedef int tBTM_BLE_PF_FILT_INDEX ;
typedef int tBTM_BLE_PF_COND_PARAM ;
typedef int tBTA_STATUS ;
struct TYPE_7__ {int ref_value; int cond_type; int (* p_filt_cfg_cback ) (int ,int ,int ,int ,int ) ;scalar_t__ p_cond_param; scalar_t__ filt_index; int action; } ;
struct TYPE_9__ {TYPE_1__ ble_cfg_filter_cond; } ;
typedef TYPE_3__ tBTA_DM_MSG ;
struct TYPE_10__ {int (* p_scan_filt_cfg_cback ) (int ,int ,int ,int ,int ) ;} ;


 int APPL_TRACE_DEBUG (char*) ;
 int BTA_DM_BLE_PF_CONFIG_EVT ;
 int BTA_FAILURE ;
 int BTM_BleCfgFilterCondition (int ,int ,int ,int *,int ,int ) ;
 int BTM_BleGetVendorCapabilities (TYPE_2__*) ;
 int BTM_CMD_STARTED ;
 int BTM_MODE_UNSUPPORTED ;
 int bta_ble_scan_cfg_cmpl ;
 TYPE_5__ bta_dm_cb ;
 int stub1 (int ,int ,int ,int ,int ) ;

void bta_dm_cfg_filter_cond (tBTA_DM_MSG *p_data)
{
    tBTM_STATUS st = BTM_MODE_UNSUPPORTED;
    tBTA_STATUS status = BTA_FAILURE;

    tBTM_BLE_VSC_CB cmn_vsc_cb;

    APPL_TRACE_DEBUG("bta_dm_cfg_filter_cond");
    BTM_BleGetVendorCapabilities(&cmn_vsc_cb);
    if (0 != cmn_vsc_cb.filter_support) {
        if ((st = BTM_BleCfgFilterCondition(p_data->ble_cfg_filter_cond.action,
                                            p_data->ble_cfg_filter_cond.cond_type,
                                            (tBTM_BLE_PF_FILT_INDEX)p_data->ble_cfg_filter_cond.filt_index,
                                            (tBTM_BLE_PF_COND_PARAM *)p_data->ble_cfg_filter_cond.p_cond_param,
                                            bta_ble_scan_cfg_cmpl, p_data->ble_cfg_filter_cond.ref_value))
                == BTM_CMD_STARTED) {
            bta_dm_cb.p_scan_filt_cfg_cback = p_data->ble_cfg_filter_cond.p_filt_cfg_cback;
            return;
        }
    }

    if (p_data->ble_cfg_filter_cond.p_filt_cfg_cback) {
        p_data->ble_cfg_filter_cond.p_filt_cfg_cback(BTA_DM_BLE_PF_CONFIG_EVT,
                p_data->ble_cfg_filter_cond.cond_type, 0, status,
                p_data->ble_cfg_filter_cond.ref_value);
    }
    return;
}
