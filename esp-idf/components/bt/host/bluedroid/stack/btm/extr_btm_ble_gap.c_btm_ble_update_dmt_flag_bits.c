
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_2__ {scalar_t__ (* supports_simultaneous_le_bredr ) () ;} ;


 int BTM_BLE_BREDR_NOT_SPT ;
 int BTM_BLE_DMT_CONTROLLER_SPT ;
 int BTM_BLE_DMT_HOST_SPT ;
 int const BTM_CONNECTABLE_MASK ;
 int const BTM_DISCOVERABLE_MASK ;
 TYPE_1__* controller_get_interface () ;
 scalar_t__ stub1 () ;

void btm_ble_update_dmt_flag_bits(UINT8 *adv_flag_value, const UINT16 connect_mode,
                                  const UINT16 disc_mode)
{

    if ((disc_mode & BTM_DISCOVERABLE_MASK) == 0 &&
            (connect_mode & BTM_CONNECTABLE_MASK) == 0) {
        *adv_flag_value |= BTM_BLE_BREDR_NOT_SPT;
    } else {
        *adv_flag_value &= ~BTM_BLE_BREDR_NOT_SPT;
    }


    if (controller_get_interface()->supports_simultaneous_le_bredr()) {
        *adv_flag_value |= (BTM_BLE_DMT_CONTROLLER_SPT | BTM_BLE_DMT_HOST_SPT);
    } else {
        *adv_flag_value &= ~(BTM_BLE_DMT_CONTROLLER_SPT | BTM_BLE_DMT_HOST_SPT);
    }
}
