
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* p_last_ccb; TYPE_3__* p_first_ccb; } ;
typedef TYPE_2__ tL2C_CCB_Q ;
struct TYPE_10__ {size_t ccb_priority; struct TYPE_10__* p_prev_ccb; struct TYPE_10__* p_next_ccb; TYPE_5__* p_lcb; int in_use; int local_cid; } ;
typedef TYPE_3__ tL2C_CCB ;
struct TYPE_11__ {TYPE_1__* rr_serv; TYPE_2__ ccb_queue; } ;
struct TYPE_8__ {scalar_t__ num_ccb; TYPE_3__* p_first_ccb; TYPE_3__* p_serve_ccb; } ;


 int L2CAP_TRACE_DEBUG (char*,int ) ;
 int L2CAP_TRACE_ERROR (char*,int ,int ,TYPE_5__*,TYPE_2__*,TYPE_3__*) ;

void l2cu_dequeue_ccb (tL2C_CCB *p_ccb)
{
    tL2C_CCB_Q *p_q = ((void*)0);

    L2CAP_TRACE_DEBUG ("l2cu_dequeue_ccb  CID: 0x%04x", p_ccb->local_cid);



    if (p_ccb->p_lcb != ((void*)0)) {
        p_q = &p_ccb->p_lcb->ccb_queue;
    }

    if ( (!p_ccb->in_use) || (p_q == ((void*)0)) || (p_q->p_first_ccb == ((void*)0)) ) {
        L2CAP_TRACE_ERROR ("l2cu_dequeue_ccb  CID: 0x%04x ERROR in_use: %u  p_lcb: %p  p_q: %p  p_q->p_first_ccb: %p",
                           p_ccb->local_cid, p_ccb->in_use, p_ccb->p_lcb, p_q, p_q ? p_q->p_first_ccb : 0);
        return;
    }



    if (p_ccb->p_lcb != ((void*)0)) {

        p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].num_ccb--;


        if (p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].num_ccb == 0 ) {
            p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].p_first_ccb = ((void*)0);
            p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].p_serve_ccb = ((void*)0);
        } else {

            if ( p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].p_first_ccb == p_ccb ) {
                p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].p_first_ccb = p_ccb->p_next_ccb;
            }

            if ( p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].p_serve_ccb == p_ccb ) {

                p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].p_serve_ccb
                    = p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].p_first_ccb;
            }
        }
    }


    if (p_ccb == p_q->p_first_ccb) {

        p_q->p_first_ccb = p_ccb->p_next_ccb;

        if (p_q->p_first_ccb) {
            p_q->p_first_ccb->p_prev_ccb = ((void*)0);
        } else {
            p_q->p_last_ccb = ((void*)0);
        }
    } else if (p_ccb == p_q->p_last_ccb) {

        p_q->p_last_ccb = p_ccb->p_prev_ccb;
        p_q->p_last_ccb->p_next_ccb = ((void*)0);
    } else {

        p_ccb->p_prev_ccb->p_next_ccb = p_ccb->p_next_ccb;
        p_ccb->p_next_ccb->p_prev_ccb = p_ccb->p_prev_ccb;
    }

    p_ccb->p_next_ccb = p_ccb->p_prev_ccb = ((void*)0);
}
