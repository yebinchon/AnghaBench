
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_BLE_CONN_ST ;
struct TYPE_3__ {int conn_state; } ;
struct TYPE_4__ {TYPE_1__ ble_ctr_cb; } ;


 TYPE_2__ btm_cb ;

tBTM_BLE_CONN_ST btm_ble_get_conn_st(void)
{
    return btm_cb.ble_ctr_cb.conn_state;
}
