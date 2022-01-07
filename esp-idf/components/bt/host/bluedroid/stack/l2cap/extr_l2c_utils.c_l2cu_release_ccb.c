
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_15__ {scalar_t__ psm; scalar_t__ real_psm; } ;
typedef TYPE_3__ tL2C_RCB ;
struct TYPE_14__ {int p_first_ccb; } ;
struct TYPE_16__ {scalar_t__ link_state; TYPE_2__ ccb_queue; scalar_t__ in_use; int remote_bd_addr; } ;
typedef TYPE_4__ tL2C_LCB ;
struct TYPE_13__ {int * waiting_for_ack_q; int * retrans_q; int * srej_rcv_hold_q; } ;
struct TYPE_17__ {scalar_t__ local_cid; int should_free_rcb; scalar_t__ in_use; struct TYPE_17__* p_next_ccb; struct TYPE_17__* p_prev_ccb; TYPE_4__* p_lcb; TYPE_1__ fcrb; int * xmit_hold_q; int timer_entry; TYPE_3__* p_rcb; } ;
typedef TYPE_5__ tL2C_CCB ;
struct TYPE_12__ {TYPE_5__* p_free_ccb_last; TYPE_5__* p_free_ccb_first; } ;


 scalar_t__ FALSE ;
 scalar_t__ L2CAP_BASE_APPL_CID ;
 scalar_t__ L2CAP_CONNECTIONLESS_CID ;
 int L2CAP_TRACE_DEBUG (char*,scalar_t__,scalar_t__) ;
 scalar_t__ LST_CONNECTED ;
 int btm_sec_clr_service_by_psm (scalar_t__) ;
 int btm_sec_clr_temp_auth_service (int ) ;
 int btu_free_timer (int *) ;
 int fixed_queue_free (int *,int ) ;
 int l2c_fcr_cleanup (TYPE_5__*) ;
 int l2c_link_adjust_chnl_allocation () ;
 TYPE_10__ l2cb ;
 int l2cu_dequeue_ccb (TYPE_5__*) ;
 int l2cu_no_dynamic_ccbs (TYPE_4__*) ;
 int osi_free (TYPE_3__*) ;
 int osi_free_func ;

void l2cu_release_ccb (tL2C_CCB *p_ccb)
{
    tL2C_LCB *p_lcb = p_ccb->p_lcb;
    tL2C_RCB *p_rcb = p_ccb->p_rcb;

    L2CAP_TRACE_DEBUG ("l2cu_release_ccb: cid 0x%04x  in_use: %u", p_ccb->local_cid, p_ccb->in_use);


    if (!p_ccb->in_use) {
        return;
    }

    if (p_rcb && (p_rcb->psm != p_rcb->real_psm)) {
        btm_sec_clr_service_by_psm(p_rcb->psm);
    }

    if (p_ccb->should_free_rcb) {
        osi_free(p_rcb);
        p_ccb->p_rcb = ((void*)0);
        p_ccb->should_free_rcb = 0;
    }

    if (p_lcb) {
        btm_sec_clr_temp_auth_service (p_lcb->remote_bd_addr);
    }


    btu_free_timer (&p_ccb->timer_entry);

    fixed_queue_free(p_ccb->xmit_hold_q, osi_free_func);
    p_ccb->xmit_hold_q = ((void*)0);

    fixed_queue_free(p_ccb->fcrb.srej_rcv_hold_q, osi_free_func);
    fixed_queue_free(p_ccb->fcrb.retrans_q, osi_free_func);
    fixed_queue_free(p_ccb->fcrb.waiting_for_ack_q, osi_free_func);
    p_ccb->fcrb.srej_rcv_hold_q = ((void*)0);
    p_ccb->fcrb.retrans_q = ((void*)0);
    p_ccb->fcrb.waiting_for_ack_q = ((void*)0);




    l2c_fcr_cleanup (p_ccb);


    if ( (p_lcb) &&
            ( (p_ccb->local_cid >= L2CAP_BASE_APPL_CID)

              || (p_ccb->local_cid == L2CAP_CONNECTIONLESS_CID)

            )
       ) {
        l2cu_dequeue_ccb (p_ccb);


        p_ccb->p_lcb = ((void*)0);
    }


    if (!l2cb.p_free_ccb_first) {
        l2cb.p_free_ccb_first = p_ccb;
        l2cb.p_free_ccb_last = p_ccb;
        p_ccb->p_next_ccb = ((void*)0);
        p_ccb->p_prev_ccb = ((void*)0);
    } else {
        p_ccb->p_next_ccb = ((void*)0);
        p_ccb->p_prev_ccb = l2cb.p_free_ccb_last;
        l2cb.p_free_ccb_last->p_next_ccb = p_ccb;
        l2cb.p_free_ccb_last = p_ccb;
    }


    p_ccb->in_use = FALSE;


    if ((p_lcb) && p_lcb->in_use && (p_lcb->link_state == LST_CONNECTED)) {
        if (!p_lcb->ccb_queue.p_first_ccb) {
            l2cu_no_dynamic_ccbs (p_lcb);
        } else {

            l2c_link_adjust_chnl_allocation ();
        }
    }
}
