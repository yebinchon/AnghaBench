
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int peer_bda; int transport; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef int UINT16 ;
typedef scalar_t__ BOOLEAN ;


 int GATT_CONN_TERMINATE_PEER_USER ;
 int GATT_TRANSPORT_BR_EDR ;
 int L2CA_DisconnectRsp (int ) ;
 int L2CA_GetDisconnectReason (int ,int ) ;
 scalar_t__ btm_sec_is_a_bonded_dev (int ) ;
 int gatt_add_a_bonded_dev_for_srv_chg (int ) ;
 int gatt_cleanup_upon_disc (int ,int ,int ) ;
 TYPE_1__* gatt_find_tcb_by_cid (int ) ;
 int * gatt_is_bda_in_the_srv_chg_clt_list (int ) ;

void gatt_l2cif_disconnect_ind_cback(UINT16 lcid, BOOLEAN ack_needed)
{
    tGATT_TCB *p_tcb;
    UINT16 reason;


    if ((p_tcb = gatt_find_tcb_by_cid(lcid)) != ((void*)0)) {
        if (ack_needed) {

            L2CA_DisconnectRsp(lcid);
        }
        if (gatt_is_bda_in_the_srv_chg_clt_list(p_tcb->peer_bda) == ((void*)0)) {
            if (btm_sec_is_a_bonded_dev(p_tcb->peer_bda)) {
                gatt_add_a_bonded_dev_for_srv_chg(p_tcb->peer_bda);
            }
        }

        if ((reason = L2CA_GetDisconnectReason(p_tcb->peer_bda, p_tcb->transport)) == 0) {
            reason = GATT_CONN_TERMINATE_PEER_USER;
        }


        gatt_cleanup_upon_disc(p_tcb->peer_bda, reason, GATT_TRANSPORT_BR_EDR);
    }
}
