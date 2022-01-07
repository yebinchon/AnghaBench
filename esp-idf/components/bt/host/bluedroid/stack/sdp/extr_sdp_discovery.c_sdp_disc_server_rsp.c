
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int disc_state; int timer_entry; } ;
typedef TYPE_1__ tCONN_CB ;
typedef int UINT8 ;
struct TYPE_10__ {int offset; int len; } ;
typedef TYPE_2__ BT_HDR ;
typedef scalar_t__ BOOLEAN ;


 int BE_STREAM_TO_UINT8 (int,int*) ;
 scalar_t__ FALSE ;
 int SDP_DISC_WAIT_ATTR ;
 int SDP_DISC_WAIT_HANDLES ;
 int SDP_DISC_WAIT_SEARCH_ATTR ;
 int SDP_GENERIC_ERROR ;



 int SDP_TRACE_WARNING (char*,int,...) ;
 scalar_t__ TRUE ;
 int btu_stop_timer (int *) ;
 int process_service_attr_rsp (TYPE_1__*,int*) ;
 int process_service_search_attr_rsp (TYPE_1__*,int*) ;
 int process_service_search_rsp (TYPE_1__*,int*) ;
 int sdp_disconnect (TYPE_1__*,int ) ;

void sdp_disc_server_rsp (tCONN_CB *p_ccb, BT_HDR *p_msg)
{
    UINT8 *p, rsp_pdu;
    BOOLEAN invalid_pdu = TRUE;


    SDP_TRACE_WARNING("sdp_disc_server_rsp disc_state:%d\n", p_ccb->disc_state);



    btu_stop_timer (&p_ccb->timer_entry);


    p = (UINT8 *)(p_msg + 1) + p_msg->offset;

    BE_STREAM_TO_UINT8 (rsp_pdu, p);

    p_msg->len--;

    switch (rsp_pdu) {
    case 128:
        if (p_ccb->disc_state == SDP_DISC_WAIT_HANDLES) {
            process_service_search_rsp (p_ccb, p);
            invalid_pdu = FALSE;
        }
        break;

    case 130:
        if (p_ccb->disc_state == SDP_DISC_WAIT_ATTR) {
            process_service_attr_rsp (p_ccb, p);
            invalid_pdu = FALSE;
        }
        break;

    case 129:
        if (p_ccb->disc_state == SDP_DISC_WAIT_SEARCH_ATTR) {
            process_service_search_attr_rsp (p_ccb, p);
            invalid_pdu = FALSE;
        }
        break;
    }

    if (invalid_pdu) {
        SDP_TRACE_WARNING ("SDP - Unexp. PDU: %d in state: %d\n", rsp_pdu, p_ccb->disc_state);
        sdp_disconnect (p_ccb, SDP_GENERIC_ERROR);
    }
}
