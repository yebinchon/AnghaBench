
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTA_STATUS ;
struct TYPE_6__ {int (* p_adv_data_cback ) (int ) ;} ;
struct TYPE_5__ {int adv_data_len; int adv_data; } ;
struct TYPE_7__ {TYPE_2__ ble_set_adv_data; TYPE_1__ ble_set_long_adv_data; } ;
typedef TYPE_3__ tBTA_DM_MSG ;


 int BTA_FAILURE ;
 int BTA_SUCCESS ;
 scalar_t__ BTM_BleWriteLongAdvData (int ,int ) ;
 scalar_t__ BTM_SUCCESS ;
 int stub1 (int ) ;

void bta_dm_ble_set_long_adv (tBTA_DM_MSG *p_data)
{
    tBTA_STATUS status = BTA_FAILURE;

    if (BTM_BleWriteLongAdvData(p_data->ble_set_long_adv_data.adv_data,
                                p_data->ble_set_long_adv_data.adv_data_len) == BTM_SUCCESS) {
        status = BTA_SUCCESS;
    }

    if (p_data->ble_set_adv_data.p_adv_data_cback) {
        (*p_data->ble_set_adv_data.p_adv_data_cback)(status);
    }
}
