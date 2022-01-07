
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int list_node_t ;
struct TYPE_7__ {int rcv_hold_tle; int rcv_pending_q; } ;
struct TYPE_6__ {scalar_t__ layer_specific; } ;
typedef TYPE_1__ BT_HDR ;
typedef int BOOLEAN ;


 int BTU_TTYPE_L2CAP_HOLD ;
 int BT_1SEC_TIMEOUT ;
 int L2CAP_TRACE_WARNING (char*) ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;
 int l2c_rcv_acl_data (TYPE_1__*) ;
 TYPE_4__ l2cb ;
 int * list_begin (int ) ;
 int const* list_end (int ) ;
 scalar_t__ list_is_empty (int ) ;
 int * list_next (int const*) ;
 TYPE_1__* list_node (int const*) ;
 int list_remove (int ,TYPE_1__*) ;

void l2c_process_held_packets(BOOLEAN timed_out)
{
    if (list_is_empty(l2cb.rcv_pending_q)) {
        return;
    }

    if (!timed_out) {
        btu_stop_timer(&l2cb.rcv_hold_tle);
        L2CAP_TRACE_WARNING("L2CAP HOLD CONTINUE");
    } else {
        L2CAP_TRACE_WARNING("L2CAP HOLD TIMEOUT");
    }

    for (const list_node_t *node = list_begin(l2cb.rcv_pending_q);
            node != list_end(l2cb.rcv_pending_q);) {
        BT_HDR *p_buf = list_node(node);
        node = list_next(node);
        if (!timed_out || (!p_buf->layer_specific) || (--p_buf->layer_specific == 0)) {
            list_remove(l2cb.rcv_pending_q, p_buf);
            p_buf->layer_specific = 0xFFFF;
            l2c_rcv_acl_data(p_buf);
        }
    }


    if (!list_is_empty(l2cb.rcv_pending_q)) {
        btu_start_timer (&l2cb.rcv_hold_tle, BTU_TTYPE_L2CAP_HOLD, BT_1SEC_TIMEOUT);
    }
}
