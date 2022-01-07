
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ handle; } ;
typedef TYPE_1__ tGATT_VALUE ;
struct TYPE_6__ {scalar_t__ indicate_handle; int pending_ind_q; } ;
typedef TYPE_2__ tGATT_TCB ;
typedef int list_t ;
typedef int list_node_t ;
struct TYPE_7__ {scalar_t__ handle_of_h_r; } ;
typedef int BOOLEAN ;


 int FALSE ;
 int GATT_TRACE_DEBUG (char*,int ) ;
 int TRUE ;
 int * fixed_queue_get_list (int ) ;
 int fixed_queue_is_empty (int ) ;
 TYPE_4__ gatt_cb ;
 int * list_begin (int *) ;
 int const* list_end (int *) ;
 int * list_next (int const*) ;
 scalar_t__ list_node (int const*) ;

BOOLEAN gatt_is_srv_chg_ind_pending (tGATT_TCB *p_tcb)
{
    BOOLEAN srv_chg_ind_pending = FALSE;

    GATT_TRACE_DEBUG("gatt_is_srv_chg_ind_pending is_queue_empty=%d",
                     fixed_queue_is_empty(p_tcb->pending_ind_q));

    if (p_tcb->indicate_handle == gatt_cb.handle_of_h_r) {
        srv_chg_ind_pending = TRUE;
    } else if (! fixed_queue_is_empty(p_tcb->pending_ind_q)) {
        list_t *list = fixed_queue_get_list(p_tcb->pending_ind_q);
        for (const list_node_t *node = list_begin(list);
             node != list_end(list);
             node = list_next(node)) {
            tGATT_VALUE *p_buf = (tGATT_VALUE *)list_node(node);
            if (p_buf->handle == gatt_cb.handle_of_h_r)
            {
                srv_chg_ind_pending = TRUE;
                break;
            }
        }
    }

    GATT_TRACE_DEBUG("srv_chg_ind_pending = %d", srv_chg_ind_pending);
    return srv_chg_ind_pending;
}
