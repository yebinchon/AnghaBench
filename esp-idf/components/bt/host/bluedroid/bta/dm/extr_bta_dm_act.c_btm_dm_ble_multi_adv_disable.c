
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_5__ {scalar_t__ inst_id; } ;
struct TYPE_6__ {TYPE_1__ ble_multi_adv_disable; } ;
typedef TYPE_2__ tBTA_DM_MSG ;
struct TYPE_7__ {int (* p_multi_adv_cback ) (int ,scalar_t__,void*,int ) ;} ;


 int BTA_BLE_MULTI_ADV_DISABLE_EVT ;
 int BTA_FAILURE ;
 scalar_t__ BTM_BleDisableAdvInstance (scalar_t__) ;
 scalar_t__ BTM_BleMaxMultiAdvInstanceCount () ;
 scalar_t__ BTM_CMD_STARTED ;
 TYPE_4__ bta_dm_cb ;
 void* btm_ble_multi_adv_get_ref (scalar_t__) ;
 int stub1 (int ,scalar_t__,void*,int ) ;

void btm_dm_ble_multi_adv_disable(tBTA_DM_MSG *p_data)
{
    tBTM_STATUS btm_status = 0;
    void *p_ref = ((void*)0);

    if (BTM_BleMaxMultiAdvInstanceCount() > 0 && p_data->ble_multi_adv_disable.inst_id > 0
            && p_data->ble_multi_adv_disable.inst_id < BTM_BleMaxMultiAdvInstanceCount()) {
        btm_status = BTM_BleDisableAdvInstance(p_data->ble_multi_adv_disable.inst_id);
    }

    if (BTM_CMD_STARTED != btm_status) {
        p_ref = btm_ble_multi_adv_get_ref(p_data->ble_multi_adv_disable.inst_id);
        bta_dm_cb.p_multi_adv_cback(BTA_BLE_MULTI_ADV_DISABLE_EVT,
                                    p_data->ble_multi_adv_disable.inst_id, p_ref, BTA_FAILURE);
    }
}
