
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_3__ {int layer_specific; scalar_t__ offset; scalar_t__ len; int event; } ;
typedef TYPE_1__ BT_HDR ;


 int BTU_HCI_RCV_MBOX ;
 int BTU_TASK ;
 int BT_EVT_TO_GAP_MSG ;
 int BT_HDR_SIZE ;
 int GAP_TRACE_ERROR (char*) ;
 int GKI_send_msg (int ,int ,TYPE_1__*) ;
 scalar_t__ osi_malloc (int ) ;

void gap_send_event (UINT16 gap_handle)
{
    BT_HDR *p_msg;

    if ((p_msg = (BT_HDR *)osi_malloc(BT_HDR_SIZE)) != ((void*)0)) {
        p_msg->event = BT_EVT_TO_GAP_MSG;
        p_msg->len = 0;
        p_msg->offset = 0;
        p_msg->layer_specific = gap_handle;

        GKI_send_msg(BTU_TASK, BTU_HCI_RCV_MBOX, p_msg);
    } else {
        GAP_TRACE_ERROR("Unable to allocate message buffer for event.");
    }
}
