
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_2__ {int (* supports_ble ) () ;} ;


 int BTM_ILLEGAL_VALUE ;
 int BTM_SUCCESS ;
 int btm_ble_start_adv () ;
 int btm_ble_stop_adv () ;
 TYPE_1__* controller_get_interface () ;
 int stub1 () ;

tBTM_STATUS BTM_BleStartAdv(void)
{
    tBTM_STATUS status = BTM_SUCCESS;
    if (!controller_get_interface()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    btm_ble_stop_adv();

    status = btm_ble_start_adv();

    return status;
}
