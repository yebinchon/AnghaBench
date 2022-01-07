
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
typedef int tBTM_BLE_ADV_PARAMS ;
struct TYPE_5__ {int * p_ref; int (* p_cback ) (int ,int,int *,int ) ;scalar_t__ p_params; } ;
struct TYPE_6__ {TYPE_1__ ble_multi_adv_enb; } ;
typedef TYPE_2__ tBTA_DM_MSG ;
struct TYPE_7__ {int (* p_multi_adv_cback ) (int ,int,int *,int ) ;} ;


 int BTA_BLE_MULTI_ADV_ENB_EVT ;
 int BTA_FAILURE ;
 scalar_t__ BTM_BleEnableAdvInstance (int *,int (*) (int ,int,int *,int ),int *) ;
 scalar_t__ BTM_BleMaxMultiAdvInstanceCount () ;
 scalar_t__ BTM_CMD_STARTED ;
 TYPE_3__ bta_dm_cb ;
 int stub1 (int ,int,int *,int ) ;

void bta_dm_ble_multi_adv_enb(tBTA_DM_MSG *p_data)
{
    tBTM_STATUS btm_status = 0;

    bta_dm_cb.p_multi_adv_cback = p_data->ble_multi_adv_enb.p_cback;
    if (BTM_BleMaxMultiAdvInstanceCount() > 0 && ((void*)0) != p_data->ble_multi_adv_enb.p_ref) {
        btm_status = BTM_BleEnableAdvInstance((tBTM_BLE_ADV_PARAMS *)
                                              p_data->ble_multi_adv_enb.p_params,
                                              p_data->ble_multi_adv_enb.p_cback,
                                              p_data->ble_multi_adv_enb.p_ref);
    }

    if (BTM_CMD_STARTED != btm_status) {
        bta_dm_cb.p_multi_adv_cback(BTA_BLE_MULTI_ADV_ENB_EVT, 0xFF,
                                    p_data->ble_multi_adv_enb.p_ref, BTA_FAILURE);
    }
}
