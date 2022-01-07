
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; } ;
typedef TYPE_2__ tBTM_BLE_INQ_CB ;
struct TYPE_4__ {TYPE_2__ inq_var; } ;
struct TYPE_6__ {TYPE_1__ ble_ctr_cb; } ;


 scalar_t__ BTM_BLE_ADVERTISING ;
 scalar_t__ BTM_BLE_SCANNING ;
 int btm_ble_start_adv () ;
 int btm_ble_start_scan () ;
 int btm_ble_stop_adv () ;
 TYPE_3__ btm_cb ;

void BTM_Recovery_Pre_State(void)
{
    tBTM_BLE_INQ_CB *ble_inq_cb = &btm_cb.ble_ctr_cb.inq_var;

    if (ble_inq_cb->state == BTM_BLE_ADVERTISING) {
        btm_ble_stop_adv();
        btm_ble_start_adv();
    } else if (ble_inq_cb->state == BTM_BLE_SCANNING) {
        btm_ble_start_scan();
    }

    return;
}
