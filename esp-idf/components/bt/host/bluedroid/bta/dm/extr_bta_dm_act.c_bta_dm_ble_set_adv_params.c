
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_dir_bda; int adv_int_max; int adv_int_min; } ;
struct TYPE_5__ {TYPE_1__ ble_set_adv_params; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTA_DM_BLE_ADV_CHNL_MAP ;
 int BTM_BleSetAdvParams (int ,int ,int ,int ) ;

void bta_dm_ble_set_adv_params (tBTA_DM_MSG *p_data)
{
    BTM_BleSetAdvParams(p_data->ble_set_adv_params.adv_int_min,
                        p_data->ble_set_adv_params.adv_int_max,
                        p_data->ble_set_adv_params.p_dir_bda,
                        BTA_DM_BLE_ADV_CHNL_MAP);
}
