
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ is_congested; int connection_id; int tx_queue; int gap_handle; int (* p_callback ) (int ,int ) ;} ;
typedef TYPE_1__ tGAP_CCB ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
typedef int BT_HDR ;
typedef scalar_t__ BOOLEAN ;


 int GAP_EVT_CONN_CONGESTED ;
 int GAP_EVT_CONN_UNCONGESTED ;
 int GAP_TRACE_EVENT (char*,scalar_t__,int ) ;
 scalar_t__ L2CAP_DW_CONGESTED ;
 scalar_t__ L2CAP_DW_SUCCESS ;
 scalar_t__ L2CA_DATA_WRITE (int ,int *) ;
 scalar_t__ TRUE ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 TYPE_1__* gap_find_ccb_by_cid (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void gap_congestion_ind (UINT16 lcid, BOOLEAN is_congested)
{
    tGAP_CCB *p_ccb;
    UINT16 event;
    BT_HDR *p_buf;
    UINT8 status;

    GAP_TRACE_EVENT ("GAP_CONN - Rcvd L2CAP Is Congested (%d), CID: 0x%x",
                     is_congested, lcid);


    if ((p_ccb = gap_find_ccb_by_cid (lcid)) == ((void*)0)) {
        return;
    }

    p_ccb->is_congested = is_congested;

    event = (is_congested) ? GAP_EVT_CONN_CONGESTED : GAP_EVT_CONN_UNCONGESTED;
    p_ccb->p_callback (p_ccb->gap_handle, event);

    if (!is_congested) {
        while ((p_buf = (BT_HDR *)fixed_queue_dequeue(p_ccb->tx_queue, 0)) != ((void*)0)) {
            status = L2CA_DATA_WRITE (p_ccb->connection_id, p_buf);

            if (status == L2CAP_DW_CONGESTED) {
                p_ccb->is_congested = TRUE;
                break;
            } else if (status != L2CAP_DW_SUCCESS) {
                break;
            }
        }
    }
}
