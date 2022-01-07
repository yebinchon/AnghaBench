
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ link_role; int disc_reason; } ;
typedef TYPE_1__ tL2C_LCB ;
struct TYPE_6__ {int* ble_connecting_bda; } ;
typedef int BOOLEAN ;
typedef int* BD_ADDR ;


 int BD_ADDR_LEN ;
 int BLE_CONN_CANCEL ;
 scalar_t__ BLE_CONN_IDLE ;
 scalar_t__ BTM_ACL_IS_CONNECTED (int*) ;
 int BT_TRANSPORT_LE ;
 int FALSE ;
 scalar_t__ HCI_ROLE_SLAVE ;
 int L2CAP_CONN_CANCEL ;
 int L2CAP_TRACE_WARNING (char*,...) ;
 int TRUE ;
 scalar_t__ btm_ble_get_conn_st () ;
 int btm_ble_set_conn_st (int ) ;
 scalar_t__ btsnd_hcic_ble_create_conn_cancel () ;
 TYPE_4__ l2cb ;
 TYPE_1__* l2cu_find_lcb_by_bd_addr (int*,int ) ;
 int l2cu_release_lcb (TYPE_1__*) ;
 scalar_t__ memcmp (int*,int*,int ) ;

BOOLEAN L2CA_CancelBleConnectReq (BD_ADDR rem_bda)
{
    tL2C_LCB *p_lcb;


    if (btm_ble_get_conn_st() == BLE_CONN_IDLE) {
        L2CAP_TRACE_WARNING ("L2CA_CancelBleConnectReq - no connection pending");
        return (FALSE);
    }

    if (memcmp (rem_bda, l2cb.ble_connecting_bda, BD_ADDR_LEN)) {
        L2CAP_TRACE_WARNING ("L2CA_CancelBleConnectReq - different  BDA Connecting: %08x%04x  Cancel: %08x%04x",
                             (l2cb.ble_connecting_bda[0] << 24) + (l2cb.ble_connecting_bda[1] << 16) + (l2cb.ble_connecting_bda[2] << 8) + l2cb.ble_connecting_bda[3],
                             (l2cb.ble_connecting_bda[4] << 8) + l2cb.ble_connecting_bda[5],
                             (rem_bda[0] << 24) + (rem_bda[1] << 16) + (rem_bda[2] << 8) + rem_bda[3], (rem_bda[4] << 8) + rem_bda[5]);

        return (FALSE);
    }

    if (btsnd_hcic_ble_create_conn_cancel()) {
        p_lcb = l2cu_find_lcb_by_bd_addr(rem_bda, BT_TRANSPORT_LE);

        if (p_lcb != ((void*)0) &&
                !(p_lcb->link_role == HCI_ROLE_SLAVE && BTM_ACL_IS_CONNECTED(rem_bda))) {
            p_lcb->disc_reason = L2CAP_CONN_CANCEL;
            l2cu_release_lcb (p_lcb);
        }

        btm_ble_set_conn_st (BLE_CONN_CANCEL);

        return (TRUE);
    } else {
        return (FALSE);
    }
}
