
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* p_last_ccb; TYPE_3__* p_first_ccb; } ;
typedef TYPE_2__ tL2C_CCB_Q ;
struct TYPE_8__ {scalar_t__ ccb_priority; TYPE_5__* p_lcb; struct TYPE_8__* p_prev_ccb; struct TYPE_8__* p_next_ccb; int local_cid; int in_use; } ;
typedef TYPE_3__ tL2C_CCB ;
struct TYPE_9__ {TYPE_1__* rr_serv; TYPE_2__ ccb_queue; } ;
struct TYPE_6__ {scalar_t__ num_ccb; int quota; TYPE_3__* p_serve_ccb; TYPE_3__* p_first_ccb; } ;


 int L2CAP_GET_PRIORITY_QUOTA (size_t) ;
 int L2CAP_TRACE_DEBUG (char*,int ,scalar_t__) ;
 int L2CAP_TRACE_ERROR (char*,int ,int ,TYPE_5__*) ;

void l2cu_enqueue_ccb (tL2C_CCB *p_ccb)
{
    tL2C_CCB *p_ccb1;
    tL2C_CCB_Q *p_q = ((void*)0);



    if (p_ccb->p_lcb != ((void*)0)) {
        p_q = &p_ccb->p_lcb->ccb_queue;
    }

    if ( (!p_ccb->in_use) || (p_q == ((void*)0)) ) {
        L2CAP_TRACE_ERROR ("l2cu_enqueue_ccb  CID: 0x%04x ERROR in_use: %u  p_lcb: %p",
                           p_ccb->local_cid, p_ccb->in_use, p_ccb->p_lcb);
        return;
    }

    L2CAP_TRACE_DEBUG ("l2cu_enqueue_ccb CID: 0x%04x  priority: %d",
                       p_ccb->local_cid, p_ccb->ccb_priority);


    if (!p_q->p_first_ccb) {
        p_q->p_first_ccb = p_q->p_last_ccb = p_ccb;
        p_ccb->p_next_ccb = p_ccb->p_prev_ccb = ((void*)0);
    } else {
        p_ccb1 = p_q->p_first_ccb;

        while (p_ccb1 != ((void*)0)) {

            if (p_ccb->ccb_priority < p_ccb1->ccb_priority) {

                if (p_ccb1 == p_q->p_first_ccb) {
                    p_q->p_first_ccb = p_ccb;
                } else {
                    p_ccb1->p_prev_ccb->p_next_ccb = p_ccb;
                }

                p_ccb->p_next_ccb = p_ccb1;
                p_ccb->p_prev_ccb = p_ccb1->p_prev_ccb;
                p_ccb1->p_prev_ccb = p_ccb;
                break;
            }

            p_ccb1 = p_ccb1->p_next_ccb;
        }


        if (!p_ccb1) {

            p_q->p_last_ccb->p_next_ccb = p_ccb;

            p_ccb->p_next_ccb = ((void*)0);
            p_ccb->p_prev_ccb = p_q->p_last_ccb;
            p_q->p_last_ccb = p_ccb;
        }
    }



    if (p_ccb->p_lcb != ((void*)0)) {

        if (p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].num_ccb == 0 ) {

            p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].p_first_ccb = p_ccb;

            p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].p_serve_ccb = p_ccb;

            p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].quota = L2CAP_GET_PRIORITY_QUOTA(p_ccb->ccb_priority);
        }

        p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].num_ccb++;
    }


}
