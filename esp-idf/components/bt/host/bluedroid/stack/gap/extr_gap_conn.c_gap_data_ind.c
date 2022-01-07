
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ con_state; int gap_handle; int (* p_callback ) (int ,int ) ;int rx_queue_size; int rx_queue; } ;
typedef TYPE_1__ tGAP_CCB ;
typedef int UINT16 ;
struct TYPE_8__ {scalar_t__ len; } ;
typedef TYPE_2__ BT_HDR ;


 int FIXED_QUEUE_MAX_TIMEOUT ;
 scalar_t__ GAP_CCB_STATE_CONNECTED ;
 int GAP_EVT_CONN_DATA_AVAIL ;
 int fixed_queue_enqueue (int ,TYPE_2__*,int ) ;
 TYPE_1__* gap_find_ccb_by_cid (int ) ;
 int osi_free (TYPE_2__*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void gap_data_ind (UINT16 l2cap_cid, BT_HDR *p_msg)
{
    tGAP_CCB *p_ccb;


    if ((p_ccb = gap_find_ccb_by_cid (l2cap_cid)) == ((void*)0)) {
        osi_free (p_msg);
        return;
    }

    if (p_ccb->con_state == GAP_CCB_STATE_CONNECTED) {
        fixed_queue_enqueue(p_ccb->rx_queue, p_msg, FIXED_QUEUE_MAX_TIMEOUT);

        p_ccb->rx_queue_size += p_msg->len;





        p_ccb->p_callback (p_ccb->gap_handle, GAP_EVT_CONN_DATA_AVAIL);
    } else {
        osi_free (p_msg);
    }
}
