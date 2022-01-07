
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rx_queue_size; int rx_queue; } ;
typedef TYPE_1__ tGAP_CCB ;
typedef int UINT16 ;
struct TYPE_6__ {scalar_t__ len; } ;
typedef TYPE_2__ BT_HDR ;


 int BT_PASS ;
 int GAP_ERR_BAD_HANDLE ;
 int GAP_NO_DATA_AVAIL ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 TYPE_1__* gap_find_ccb_by_handle (int ) ;

UINT16 GAP_ConnBTRead (UINT16 gap_handle, BT_HDR **pp_buf)
{
    tGAP_CCB *p_ccb = gap_find_ccb_by_handle (gap_handle);
    BT_HDR *p_buf;

    if (!p_ccb) {
        return (GAP_ERR_BAD_HANDLE);
    }

    p_buf = (BT_HDR *)fixed_queue_dequeue(p_ccb->rx_queue, 0);

    if (p_buf) {
        *pp_buf = p_buf;

        p_ccb->rx_queue_size -= p_buf->len;
        return (BT_PASS);
    } else {
        *pp_buf = ((void*)0);
        return (GAP_NO_DATA_AVAIL);
    }
}
