
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
typedef int tBTM_BLE_SCAN_COND_OP ;
typedef int tBTM_BLE_REF_VALUE ;
typedef int tBTM_BLE_PF_AVBL_SPACE ;
typedef int tBTM_BLE_PF_ACTION ;
typedef int tBTA_STATUS ;
struct TYPE_2__ {int (* p_scan_filt_cfg_cback ) (int ,int ,int ,int ,int ) ;} ;


 int APPL_TRACE_DEBUG (char*,int ,int ,int ,scalar_t__) ;
 int BTA_FAILURE ;
 int BTA_SUCCESS ;
 scalar_t__ BTM_SUCCESS ;
 TYPE_1__ bta_dm_cb ;
 int stub1 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void bta_ble_scan_cfg_cmpl(tBTM_BLE_PF_ACTION action, tBTM_BLE_SCAN_COND_OP cfg_op,
                                  tBTM_BLE_PF_AVBL_SPACE avbl_space, tBTM_STATUS status,
                                  tBTM_BLE_REF_VALUE ref_value)
{
    tBTA_STATUS st = (status == BTM_SUCCESS) ? BTA_SUCCESS : BTA_FAILURE;

    APPL_TRACE_DEBUG("bta_ble_scan_cfg_cmpl: %d, %d, %d, %d", action, cfg_op, avbl_space, status);

    if (bta_dm_cb.p_scan_filt_cfg_cback) {
        bta_dm_cb.p_scan_filt_cfg_cback(action, cfg_op, avbl_space, st, ref_value);
    }
}
