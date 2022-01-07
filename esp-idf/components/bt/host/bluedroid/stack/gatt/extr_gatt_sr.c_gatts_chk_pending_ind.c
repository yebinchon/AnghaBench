
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int value; int len; int handle; int conn_id; } ;
typedef TYPE_1__ tGATT_VALUE ;
struct TYPE_6__ {int pending_ind_q; } ;
typedef TYPE_2__ tGATT_TCB ;


 int GATTS_HandleValueIndication (int ,int ,int ,int ) ;
 int GATT_TRACE_DEBUG (char*) ;
 scalar_t__ fixed_queue_try_peek_first (int ) ;
 int fixed_queue_try_remove_from_queue (int ,TYPE_1__*) ;
 int osi_free (int ) ;

__attribute__((used)) static void gatts_chk_pending_ind(tGATT_TCB *p_tcb )
{

    tGATT_VALUE *p_buf = (tGATT_VALUE *)fixed_queue_try_peek_first(p_tcb->pending_ind_q);
    GATT_TRACE_DEBUG("gatts_chk_pending_ind");

    if (p_buf ) {
        GATTS_HandleValueIndication (p_buf->conn_id,
                                     p_buf->handle,
                                     p_buf->len,
                                     p_buf->value);
        osi_free(fixed_queue_try_remove_from_queue(p_tcb->pending_ind_q,
                                                      p_buf));
    }

}
