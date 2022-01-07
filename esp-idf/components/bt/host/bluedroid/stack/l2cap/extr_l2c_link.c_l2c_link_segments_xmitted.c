
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ link_state; int partial_segment_being_sent; int link_xmit_data_q; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_9__ {int offset; } ;
typedef TYPE_2__ BT_HDR ;


 int FALSE ;
 int HCID_GET_HANDLE (int ) ;
 int L2CAP_TRACE_WARNING (char*,int ) ;
 scalar_t__ LST_CONNECTED ;
 int STREAM_TO_UINT16 (int ,int *) ;
 int l2c_link_check_send_pkts (TYPE_1__*,int *,int *) ;
 TYPE_1__* l2cu_find_lcb_by_handle (int ) ;
 int list_prepend (int ,TYPE_2__*) ;
 int osi_free (TYPE_2__*) ;

void l2c_link_segments_xmitted (BT_HDR *p_msg)
{
    UINT8 *p = (UINT8 *)(p_msg + 1) + p_msg->offset;
    UINT16 handle;
    tL2C_LCB *p_lcb;


    STREAM_TO_UINT16 (handle, p);
    handle = HCID_GET_HANDLE (handle);


    if ((p_lcb = l2cu_find_lcb_by_handle (handle)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - rcvd segment complete, unknown handle: %d\n", handle);
        osi_free (p_msg);
        return;
    }

    if (p_lcb->link_state == LST_CONNECTED) {


        list_prepend(p_lcb->link_xmit_data_q, p_msg);

        p_lcb->partial_segment_being_sent = FALSE;

        l2c_link_check_send_pkts (p_lcb, ((void*)0), ((void*)0));
    } else {
        osi_free (p_msg);
    }
}
