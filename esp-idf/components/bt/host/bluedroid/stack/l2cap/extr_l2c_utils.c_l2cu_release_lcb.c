
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {int * p_first_ccb; } ;
struct TYPE_14__ {scalar_t__ transport; scalar_t__ sent_not_acked; scalar_t__ link_state; scalar_t__ completed_packets; int * le_sec_pending_q; int remote_bd_addr; int (* p_echo_rsp_cb ) (int ) ;int * link_xmit_data_q; TYPE_1__ ccb_queue; TYPE_3__* p_hcit_rcv_acl; int upda_con_timer; int info_timer_entry; int timer_entry; void* is_bonding; void* in_use; } ;
typedef TYPE_2__ tL2C_LCB ;
typedef int tL2C_CCB ;
typedef int (* tL2CA_ECHO_RSP_CB ) (int ) ;
struct TYPE_15__ {int p_ref_data; int (* p_callback ) (int ,scalar_t__,int ,int ) ;} ;
typedef TYPE_3__ tL2CAP_SEC_DATA ;
struct TYPE_12__ {scalar_t__ controller_le_xmit_window; scalar_t__ num_lm_ble_bufs; scalar_t__ controller_xmit_window; scalar_t__ num_lm_acl_bufs; int num_ble_links_active; int num_links_active; void* is_ble_connecting; int ble_connecting_bda; } ;
typedef int TIMER_LIST_ENT ;
typedef TYPE_3__ BT_HDR ;


 int BD_ADDR_LEN ;
 int BTM_DEV_RESET ;
 scalar_t__ BT_TRANSPORT_BR_EDR ;
 scalar_t__ BT_TRANSPORT_LE ;
 void* FALSE ;
 int FIXED_QUEUE_MAX_TIMEOUT ;
 int L2CAP_PING_RESULT_NO_LINK ;
 scalar_t__ LST_CONNECTED ;
 scalar_t__ LST_DISCONNECTING ;
 int btm_acl_removed (int ,scalar_t__) ;
 int btm_remove_sco_links (int ) ;
 int btu_free_timer (int *) ;
 scalar_t__ fixed_queue_dequeue (int *,int ) ;
 int fixed_queue_free (int *,int *) ;
 int fixed_queue_is_empty (int *) ;
 int l2c_ble_link_adjust_allocation () ;
 int l2c_link_adjust_allocation () ;
 int l2c_ucd_delete_sec_pending_q (TYPE_2__*) ;
 TYPE_10__ l2cb ;
 int l2cu_process_fixed_disc_cback (TYPE_2__*) ;
 int l2cu_release_ccb (int *) ;
 int list_free (int *) ;
 TYPE_3__* list_front (int *) ;
 int list_is_empty (int *) ;
 int list_remove (int *,TYPE_3__*) ;
 int memcmp (int ,int ,int ) ;
 int memset (int *,int ,int) ;
 int osi_free (TYPE_3__*) ;
 int stub1 (int ) ;
 int stub2 (int ,scalar_t__,int ,int ) ;

void l2cu_release_lcb (tL2C_LCB *p_lcb)
{
    tL2C_CCB *p_ccb;

    p_lcb->in_use = FALSE;
    p_lcb->is_bonding = FALSE;


    btu_free_timer (&p_lcb->timer_entry);
    memset(&p_lcb->timer_entry, 0, sizeof(TIMER_LIST_ENT));
    btu_free_timer (&p_lcb->info_timer_entry);
    memset(&p_lcb->info_timer_entry, 0, sizeof(TIMER_LIST_ENT));
    btu_free_timer(&p_lcb->upda_con_timer);
    memset(&p_lcb->upda_con_timer, 0, sizeof(TIMER_LIST_ENT));


    if (p_lcb->p_hcit_rcv_acl) {
        osi_free(p_lcb->p_hcit_rcv_acl);
        p_lcb->p_hcit_rcv_acl = ((void*)0);
    }



    if (p_lcb->transport == BT_TRANSPORT_BR_EDR)

    {

        btm_remove_sco_links(p_lcb->remote_bd_addr);
    }


    if (p_lcb->sent_not_acked > 0) {

        if (p_lcb->transport == BT_TRANSPORT_LE) {
            l2cb.controller_le_xmit_window += p_lcb->sent_not_acked;
            if (l2cb.controller_le_xmit_window > l2cb.num_lm_ble_bufs) {
                l2cb.controller_le_xmit_window = l2cb.num_lm_ble_bufs;
            }
        } else

        {
            l2cb.controller_xmit_window += p_lcb->sent_not_acked;
            if (l2cb.controller_xmit_window > l2cb.num_lm_acl_bufs) {
                l2cb.controller_xmit_window = l2cb.num_lm_acl_bufs;
            }
        }
    }



    if (!memcmp(l2cb.ble_connecting_bda, p_lcb->remote_bd_addr, BD_ADDR_LEN)) {
        l2cb.is_ble_connecting = FALSE;
    }







    for (p_ccb = p_lcb->ccb_queue.p_first_ccb; p_ccb; p_ccb = p_lcb->ccb_queue.p_first_ccb) {
        l2cu_release_ccb (p_ccb);
    }


    if ((p_lcb->link_state == LST_CONNECTED) || (p_lcb->link_state == LST_DISCONNECTING)) {

        btm_acl_removed (p_lcb->remote_bd_addr, p_lcb->transport);



    }


    if (p_lcb->link_xmit_data_q) {
        while (!list_is_empty(p_lcb->link_xmit_data_q)) {
            BT_HDR *p_buf = list_front(p_lcb->link_xmit_data_q);
            list_remove(p_lcb->link_xmit_data_q, p_buf);
            osi_free(p_buf);
        }
        list_free(p_lcb->link_xmit_data_q);
        p_lcb->link_xmit_data_q = ((void*)0);
    }



    l2c_ucd_delete_sec_pending_q(p_lcb);




    if (p_lcb->transport == BT_TRANSPORT_LE) {
        if (l2cb.num_ble_links_active >= 1) {
            l2cb.num_ble_links_active--;
        }

        l2c_ble_link_adjust_allocation();
    } else

    {
        if (l2cb.num_links_active >= 1) {
            l2cb.num_links_active--;
        }

        l2c_link_adjust_allocation();
    }


    if (p_lcb->p_echo_rsp_cb) {
        tL2CA_ECHO_RSP_CB *p_cb = p_lcb->p_echo_rsp_cb;


        p_lcb->p_echo_rsp_cb = ((void*)0);

        (*p_cb) (L2CAP_PING_RESULT_NO_LINK);
    }



    if (p_lcb->le_sec_pending_q)
    {
        while (!fixed_queue_is_empty(p_lcb->le_sec_pending_q))
        {
            tL2CAP_SEC_DATA *p_buf = (tL2CAP_SEC_DATA*) fixed_queue_dequeue(p_lcb->le_sec_pending_q, FIXED_QUEUE_MAX_TIMEOUT);
            if (p_buf->p_callback) {
                p_buf->p_callback(p_lcb->remote_bd_addr, p_lcb->transport, p_buf->p_ref_data, BTM_DEV_RESET);
            }
            osi_free(p_buf);
        }
        fixed_queue_free(p_lcb->le_sec_pending_q, ((void*)0));
        p_lcb->le_sec_pending_q = ((void*)0);
    }



    p_lcb->completed_packets = 0;


}
