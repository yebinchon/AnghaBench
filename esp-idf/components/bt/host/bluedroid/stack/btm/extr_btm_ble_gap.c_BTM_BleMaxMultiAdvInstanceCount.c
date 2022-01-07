
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_3__ {scalar_t__ adv_inst_max; } ;
struct TYPE_4__ {TYPE_1__ cmn_ble_vsc_cb; } ;


 scalar_t__ BTM_BLE_MULTI_ADV_MAX ;
 TYPE_2__ btm_cb ;

extern UINT8 BTM_BleMaxMultiAdvInstanceCount(void)
{
    return btm_cb.cmn_ble_vsc_cb.adv_inst_max < BTM_BLE_MULTI_ADV_MAX ?
           btm_cb.cmn_ble_vsc_cb.adv_inst_max : BTM_BLE_MULTI_ADV_MAX;
}
