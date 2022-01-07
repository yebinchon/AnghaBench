
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_BLE_ADV_DATA ;
typedef int tBTA_STATUS ;
struct TYPE_4__ {int (* p_adv_data_cback ) (int ) ;scalar_t__ p_adv_cfg; int data_mask; } ;
struct TYPE_5__ {TYPE_1__ ble_set_adv_data; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTA_FAILURE ;
 int BTA_SUCCESS ;
 scalar_t__ BTM_BleWriteScanRsp (int ,int *) ;
 scalar_t__ BTM_SUCCESS ;
 int stub1 (int ) ;

void bta_dm_ble_set_scan_rsp (tBTA_DM_MSG *p_data)
{
    tBTA_STATUS status = BTA_FAILURE;

    if (BTM_BleWriteScanRsp(p_data->ble_set_adv_data.data_mask,
                            (tBTM_BLE_ADV_DATA *)p_data->ble_set_adv_data.p_adv_cfg) == BTM_SUCCESS) {
        status = BTA_SUCCESS;
    }

    if (p_data->ble_set_adv_data.p_adv_data_cback) {
        (*p_data->ble_set_adv_data.p_adv_data_cback)(status);
    }
}
