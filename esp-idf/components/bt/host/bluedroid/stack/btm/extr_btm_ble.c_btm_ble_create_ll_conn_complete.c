
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;


 int BLE_CONN_IDLE ;
 int HCI_ROLE_UNKNOWN ;
 scalar_t__ HCI_SUCCESS ;
 int btm_ble_set_conn_st (int ) ;
 int btm_ble_update_mode_operation (int ,int *,scalar_t__) ;

void btm_ble_create_ll_conn_complete (UINT8 status)
{
    if (status != HCI_SUCCESS) {
        btm_ble_set_conn_st(BLE_CONN_IDLE);
        btm_ble_update_mode_operation(HCI_ROLE_UNKNOWN, ((void*)0), status);
    }
}
