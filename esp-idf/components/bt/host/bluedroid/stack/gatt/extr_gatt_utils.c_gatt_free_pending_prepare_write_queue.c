
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error_code_app; scalar_t__ total_num; int * queue; } ;
struct TYPE_5__ {TYPE_1__ prepare_write_record; } ;
typedef TYPE_2__ tGATT_TCB ;


 int FIXED_QUEUE_MAX_TIMEOUT ;
 int GATT_SUCCESS ;
 int GATT_TRACE_DEBUG (char*) ;
 int fixed_queue_dequeue (int *,int ) ;
 int fixed_queue_free (int *,int *) ;
 int fixed_queue_is_empty (int *) ;
 int osi_free (int ) ;

void gatt_free_pending_prepare_write_queue(tGATT_TCB *p_tcb)
{
    GATT_TRACE_DEBUG("gatt_free_pending_prepare_write_queue");

    if (p_tcb->prepare_write_record.queue) {

        while (!fixed_queue_is_empty(p_tcb->prepare_write_record.queue)) {
            osi_free(fixed_queue_dequeue(p_tcb->prepare_write_record.queue, FIXED_QUEUE_MAX_TIMEOUT));
        }
        fixed_queue_free(p_tcb->prepare_write_record.queue, ((void*)0));
        p_tcb->prepare_write_record.queue = ((void*)0);
    }

    p_tcb->prepare_write_record.total_num = 0;
    p_tcb->prepare_write_record.error_code_app = GATT_SUCCESS;
}
