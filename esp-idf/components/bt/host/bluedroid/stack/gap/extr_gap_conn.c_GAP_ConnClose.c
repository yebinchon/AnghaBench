
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ con_state; int connection_id; } ;
typedef TYPE_1__ tGAP_CCB ;
typedef int UINT16 ;


 int BT_PASS ;
 scalar_t__ GAP_CCB_STATE_LISTENING ;
 int GAP_ERR_BAD_HANDLE ;
 int GAP_TRACE_EVENT (char*,int ) ;
 int L2CA_DISCONNECT_REQ (int ) ;
 TYPE_1__* gap_find_ccb_by_handle (int ) ;
 int gap_release_ccb (TYPE_1__*) ;

UINT16 GAP_ConnClose (UINT16 gap_handle)
{
    tGAP_CCB *p_ccb = gap_find_ccb_by_handle (gap_handle);

    GAP_TRACE_EVENT ("GAP_CONN - close  handle: 0x%x", gap_handle);

    if (p_ccb) {

        if (p_ccb->con_state != GAP_CCB_STATE_LISTENING) {
            L2CA_DISCONNECT_REQ (p_ccb->connection_id);
        }

        gap_release_ccb (p_ccb);

        return (BT_PASS);
    }

    return (GAP_ERR_BAD_HANDLE);
}
