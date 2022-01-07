
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int con_flags; int gap_handle; int (* p_callback ) (int ,int ) ;int con_state; } ;
typedef TYPE_1__ tGAP_CCB ;


 int GAP_CCB_FLAGS_CONN_DONE ;
 int GAP_CCB_STATE_CONNECTED ;
 int GAP_EVT_CONN_OPENED ;
 int GAP_TRACE_EVENT (char*,int) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void gap_checks_con_flags (tGAP_CCB *p_ccb)
{
    GAP_TRACE_EVENT ("gap_checks_con_flags conn_flags:0x%x, ", p_ccb->con_flags);

    if ((p_ccb->con_flags & GAP_CCB_FLAGS_CONN_DONE) == GAP_CCB_FLAGS_CONN_DONE) {
        p_ccb->con_state = GAP_CCB_STATE_CONNECTED;

        p_ccb->p_callback (p_ccb->gap_handle, GAP_EVT_CONN_OPENED);
    }
}
