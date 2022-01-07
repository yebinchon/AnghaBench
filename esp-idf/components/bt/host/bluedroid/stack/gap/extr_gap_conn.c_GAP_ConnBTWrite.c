
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ con_state; scalar_t__ is_congested; int connection_id; int tx_queue; } ;
typedef TYPE_1__ tGAP_CCB ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_9__ {scalar_t__ offset; } ;
typedef TYPE_2__ BT_HDR ;


 int BT_PASS ;
 int FIXED_QUEUE_MAX_TIMEOUT ;
 scalar_t__ GAP_CCB_STATE_CONNECTED ;
 int GAP_ERR_BAD_HANDLE ;
 int GAP_ERR_BAD_STATE ;
 int GAP_ERR_BUF_OFFSET ;
 scalar_t__ L2CAP_DW_CONGESTED ;
 scalar_t__ L2CAP_DW_SUCCESS ;
 scalar_t__ L2CAP_MIN_OFFSET ;
 scalar_t__ L2CA_DATA_WRITE (int ,TYPE_2__*) ;
 scalar_t__ TRUE ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 int fixed_queue_enqueue (int ,TYPE_2__*,int ) ;
 TYPE_1__* gap_find_ccb_by_handle (int ) ;
 int gap_send_event (int ) ;
 int osi_free (TYPE_2__*) ;

UINT16 GAP_ConnBTWrite (UINT16 gap_handle, BT_HDR *p_buf)
{
    tGAP_CCB *p_ccb = gap_find_ccb_by_handle (gap_handle);

    if (!p_ccb) {
        osi_free (p_buf);
        return (GAP_ERR_BAD_HANDLE);
    }

    if (p_ccb->con_state != GAP_CCB_STATE_CONNECTED) {
        osi_free (p_buf);
        return (GAP_ERR_BAD_STATE);
    }

    if (p_buf->offset < L2CAP_MIN_OFFSET) {
        osi_free (p_buf);
        return (GAP_ERR_BUF_OFFSET);
    }

    fixed_queue_enqueue(p_ccb->tx_queue, p_buf, FIXED_QUEUE_MAX_TIMEOUT);

    if (p_ccb->is_congested) {
        return (BT_PASS);
    }



    gap_send_event (gap_handle);
    return (BT_PASS);
}
