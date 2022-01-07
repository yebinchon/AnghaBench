
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_BLE_REF_VALUE ;
typedef int tBTM_BLE_BATCH_SCAN_EVT ;
typedef int tBTA_BLE_BATCH_SCAN_EVT ;
struct TYPE_2__ {int (* p_setup_cback ) (int ,int ,int ) ;} ;


 int APPL_TRACE_DEBUG (char*,int,int ,int ) ;
 int BTA_BLE_BATCH_SCAN_CFG_STRG_EVT ;
 int BTA_BLE_BATCH_SCAN_DIS_EVT ;
 int BTA_BLE_BATCH_SCAN_ENB_EVT ;
 int BTA_BLE_BATCH_SCAN_PARAM_EVT ;




 TYPE_1__ bta_dm_cb ;
 int stub1 (int ,int ,int ) ;

void bta_ble_scan_setup_cb(tBTM_BLE_BATCH_SCAN_EVT evt, tBTM_BLE_REF_VALUE ref_value,
                           tBTM_STATUS status)
{
    tBTA_BLE_BATCH_SCAN_EVT bta_evt = 0;

    APPL_TRACE_DEBUG("bta_ble_scan_setup_cb : evt: %d, ref_value: %d, status:%d", evt,
                     ref_value, status);

    switch (evt) {
    case 129:
        bta_evt = BTA_BLE_BATCH_SCAN_ENB_EVT;
        break;
    case 131:
        bta_evt = BTA_BLE_BATCH_SCAN_CFG_STRG_EVT;
        break;
    case 130:
        bta_evt = BTA_BLE_BATCH_SCAN_DIS_EVT;
        break;
    case 128:
        bta_evt = BTA_BLE_BATCH_SCAN_PARAM_EVT;
        break;
    default:
        break;
    }

    if (((void*)0) != bta_dm_cb.p_setup_cback) {
        bta_dm_cb.p_setup_cback(bta_evt, ref_value, status);
    }
}
