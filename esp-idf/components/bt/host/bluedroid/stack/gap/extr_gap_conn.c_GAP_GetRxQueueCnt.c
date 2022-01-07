
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ con_state; int rx_queue_size; } ;
typedef TYPE_2__ tGAP_CCB ;
typedef int UINT32 ;
typedef size_t UINT16 ;
struct TYPE_4__ {TYPE_2__* ccb_pool; } ;
struct TYPE_6__ {TYPE_1__ conn; } ;


 int BT_PASS ;
 scalar_t__ GAP_CCB_STATE_CONNECTED ;
 int GAP_INVALID_HANDLE ;
 size_t GAP_MAX_CONNECTIONS ;
 int GAP_TRACE_EVENT (char*,int,int ) ;
 TYPE_3__ gap_cb ;

int GAP_GetRxQueueCnt (UINT16 handle, UINT32 *p_rx_queue_count)
{
    tGAP_CCB *p_ccb;
    int rc = BT_PASS;


    if (handle < GAP_MAX_CONNECTIONS) {
        p_ccb = &gap_cb.conn.ccb_pool[handle];

        if (p_ccb->con_state == GAP_CCB_STATE_CONNECTED) {
            *p_rx_queue_count = p_ccb->rx_queue_size;
        } else {
            rc = GAP_INVALID_HANDLE;
        }
    } else {
        rc = GAP_INVALID_HANDLE;
    }

    GAP_TRACE_EVENT ("GAP_GetRxQueueCnt - rc = 0x%04x, rx_queue_count=%d",
                     rc , *p_rx_queue_count);

    return (rc);
}
