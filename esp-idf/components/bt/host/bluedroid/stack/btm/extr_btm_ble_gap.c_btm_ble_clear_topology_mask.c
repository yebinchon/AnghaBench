
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_BLE_STATE_MASK ;
struct TYPE_3__ {int cur_states; } ;
struct TYPE_4__ {TYPE_1__ ble_ctr_cb; } ;
typedef int BOOLEAN ;


 int BTM_BLE_STATE_ALL_MASK ;
 int TRUE ;
 TYPE_2__ btm_cb ;

BOOLEAN btm_ble_clear_topology_mask (tBTM_BLE_STATE_MASK request_state_mask)
{
    request_state_mask &= BTM_BLE_STATE_ALL_MASK;
    btm_cb.ble_ctr_cb.cur_states &= ~request_state_mask;
    return TRUE;
}
