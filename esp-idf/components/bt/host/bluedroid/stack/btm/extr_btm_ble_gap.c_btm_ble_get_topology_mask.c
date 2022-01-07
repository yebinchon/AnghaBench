
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_BLE_STATE_MASK ;
struct TYPE_3__ {int cur_states; } ;
struct TYPE_4__ {TYPE_1__ ble_ctr_cb; } ;


 TYPE_2__ btm_cb ;

tBTM_BLE_STATE_MASK btm_ble_get_topology_mask (void)
{
    return btm_cb.ble_ctr_cb.cur_states;
}
