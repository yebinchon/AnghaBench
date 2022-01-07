
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_7__ {int connectable_mode; int directed_conn; int adv_mode; } ;
struct TYPE_6__ {TYPE_3__ inq_var; } ;
struct TYPE_5__ {int connectable_mode; } ;
struct TYPE_8__ {TYPE_2__ ble_ctr_cb; TYPE_1__ btm_inq_vars; } ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 scalar_t__ BLE_CONN_IDLE ;
 int BTM_BLE_ADV_DISABLE ;
 int BTM_BLE_CONNECTABLE ;
 int BTM_BLE_CONNECT_EVT ;
 int BTM_BLE_STATE_ALL_ADV_MASK ;
 int FALSE ;
 scalar_t__ HCI_ERR_DIRECTED_ADVERTISING_TIMEOUT ;
 scalar_t__ HCI_ERR_HOST_REJECT_RESOURCES ;
 int btm_ble_clear_topology_mask (int ) ;
 scalar_t__ btm_ble_get_conn_st () ;
 int btm_ble_resume_bg_conn () ;
 int btm_ble_set_connectability (int) ;
 TYPE_4__ btm_cb ;
 int btm_send_pending_direct_conn () ;

BOOLEAN btm_ble_update_mode_operation(UINT8 link_role, BD_ADDR bd_addr, UINT8 status)
{
    BOOLEAN bg_con = FALSE;
    if (status == HCI_ERR_DIRECTED_ADVERTISING_TIMEOUT) {
        btm_cb.ble_ctr_cb.inq_var.adv_mode = BTM_BLE_ADV_DISABLE;

        btm_cb.ble_ctr_cb.inq_var.directed_conn = BTM_BLE_CONNECT_EVT;

        btm_ble_clear_topology_mask (BTM_BLE_STATE_ALL_ADV_MASK);
    }

    if (btm_cb.ble_ctr_cb.inq_var.connectable_mode == BTM_BLE_CONNECTABLE) {
        btm_ble_set_connectability(btm_cb.btm_inq_vars.connectable_mode |
                                   btm_cb.ble_ctr_cb.inq_var.connectable_mode);
    }




    if (btm_ble_get_conn_st() == BLE_CONN_IDLE && status != HCI_ERR_HOST_REJECT_RESOURCES &&
            !btm_send_pending_direct_conn()) {
        bg_con = btm_ble_resume_bg_conn();
    }

    return bg_con;
}
