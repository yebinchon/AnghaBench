
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ con_state; int connection_id; int con_flags; } ;
typedef TYPE_1__ tGAP_CCB ;
typedef int tBT_TRANSPORT ;
typedef int UINT8 ;
typedef int BD_ADDR ;


 int BTM_SUCCESS ;
 int GAP_CCB_FLAGS_SEC_DONE ;
 scalar_t__ GAP_CCB_STATE_IDLE ;
 int GAP_TRACE_EVENT (char*,scalar_t__,int ,int ) ;
 int L2CA_DISCONNECT_REQ (int ) ;
 int UNUSED (int ) ;
 int gap_checks_con_flags (TYPE_1__*) ;

__attribute__((used)) static void gap_sec_check_complete (BD_ADDR bd_addr, tBT_TRANSPORT transport, void *p_ref_data, UINT8 res)
{
    tGAP_CCB *p_ccb = (tGAP_CCB *)p_ref_data;
    UNUSED(bd_addr);
    UNUSED (transport);

    GAP_TRACE_EVENT ("gap_sec_check_complete conn_state:%d, conn_flags:0x%x, status:%d",
                     p_ccb->con_state, p_ccb->con_flags, res);
    if (p_ccb->con_state == GAP_CCB_STATE_IDLE) {
        return;
    }

    if (res == BTM_SUCCESS) {
        p_ccb->con_flags |= GAP_CCB_FLAGS_SEC_DONE;
        gap_checks_con_flags (p_ccb);
    } else {

        L2CA_DISCONNECT_REQ (p_ccb->connection_id);
    }
}
