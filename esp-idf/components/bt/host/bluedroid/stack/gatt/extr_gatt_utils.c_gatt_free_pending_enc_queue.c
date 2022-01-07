
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pending_enc_clcb; } ;
typedef TYPE_1__ tGATT_TCB ;


 int GATT_TRACE_DEBUG (char*) ;
 int fixed_queue_dequeue (int *,int ) ;
 int fixed_queue_free (int *,int *) ;
 int fixed_queue_is_empty (int *) ;
 int osi_free (int ) ;

void gatt_free_pending_enc_queue(tGATT_TCB *p_tcb)
{
    GATT_TRACE_DEBUG("gatt_free_pending_enc_queue");
    if (p_tcb->pending_enc_clcb == ((void*)0)) {
        return;
    }


    while (!fixed_queue_is_empty(p_tcb->pending_enc_clcb)) {
        osi_free(fixed_queue_dequeue(p_tcb->pending_enc_clcb, 0));
    }
 fixed_queue_free(p_tcb->pending_enc_clcb, ((void*)0));
    p_tcb->pending_enc_clcb = ((void*)0);
}
