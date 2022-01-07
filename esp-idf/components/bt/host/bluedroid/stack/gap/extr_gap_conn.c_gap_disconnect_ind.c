
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gap_handle; int (* p_callback ) (int ,int ) ;} ;
typedef TYPE_1__ tGAP_CCB ;
typedef int UINT16 ;
typedef scalar_t__ BOOLEAN ;


 int GAP_EVT_CONN_CLOSED ;
 int GAP_TRACE_EVENT (char*,int ) ;
 int L2CA_DISCONNECT_RSP (int ) ;
 TYPE_1__* gap_find_ccb_by_cid (int ) ;
 int gap_release_ccb (TYPE_1__*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void gap_disconnect_ind (UINT16 l2cap_cid, BOOLEAN ack_needed)
{
    tGAP_CCB *p_ccb;

    GAP_TRACE_EVENT ("GAP_CONN - Rcvd L2CAP disc, CID: 0x%x", l2cap_cid);


    if ((p_ccb = gap_find_ccb_by_cid (l2cap_cid)) == ((void*)0)) {
        return;
    }

    if (ack_needed) {
        L2CA_DISCONNECT_RSP (l2cap_cid);
    }

    p_ccb->p_callback (p_ccb->gap_handle, GAP_EVT_CONN_CLOSED);
    gap_release_ccb (p_ccb);
}
