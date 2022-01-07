
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tL2C_LCB ;
typedef scalar_t__ tBTM_BLE_CONN_ST ;
typedef int BOOLEAN ;


 scalar_t__ BLE_BG_CONN ;
 scalar_t__ BLE_CONN_IDLE ;
 int FALSE ;
 int L2CAP_TRACE_WARNING (char*,scalar_t__) ;
 int TRUE ;
 int btm_ble_enqueue_direct_conn_req (int *) ;
 scalar_t__ btm_ble_get_conn_st () ;
 int btm_ble_suspend_bg_conn () ;
 int l2cble_init_direct_conn (int *) ;

BOOLEAN l2cble_create_conn (tL2C_LCB *p_lcb)
{
    tBTM_BLE_CONN_ST conn_st = btm_ble_get_conn_st();
    BOOLEAN rt = FALSE;


    if (conn_st == BLE_CONN_IDLE) {
        rt = l2cble_init_direct_conn(p_lcb);
    } else {
        L2CAP_TRACE_WARNING ("L2CAP - LE - cannot start new connection at conn st: %d", conn_st);

        btm_ble_enqueue_direct_conn_req(p_lcb);

        if (conn_st == BLE_BG_CONN) {
            btm_ble_suspend_bg_conn();
        }

        rt = TRUE;
    }
    return rt;
}
