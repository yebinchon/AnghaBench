
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tBTM_BLE_CONN_ST ;
struct TYPE_3__ {scalar_t__ conn_state; } ;
struct TYPE_4__ {TYPE_1__ ble_ctr_cb; } ;


 scalar_t__ BLE_BG_CONN ;
 scalar_t__ BLE_DIR_CONN ;
 int BTM_BLE_STATE_INIT_BIT ;
 int btm_ble_clear_topology_mask (int ) ;
 int btm_ble_set_topology_mask (int ) ;
 TYPE_2__ btm_cb ;

void btm_ble_set_conn_st(tBTM_BLE_CONN_ST new_st)
{
    btm_cb.ble_ctr_cb.conn_state = new_st;

    if (new_st == BLE_BG_CONN || new_st == BLE_DIR_CONN) {
        btm_ble_set_topology_mask(BTM_BLE_STATE_INIT_BIT);
    } else {
        btm_ble_clear_topology_mask(BTM_BLE_STATE_INIT_BIT);
    }
}
