
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int timer_entry; } ;
typedef TYPE_1__ tCONN_CB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_10__ {int offset; int len; } ;
typedef TYPE_2__ BT_HDR ;


 int BE_STREAM_TO_UINT16 (int,int*) ;
 int BTU_TTYPE_SDP ;
 int SDP_INACT_TIMEOUT ;
 int SDP_INVALID_PDU_SIZE ;
 int SDP_INVALID_REQ_SYNTAX ;



 int SDP_TEXT_BAD_HEADER ;
 int SDP_TEXT_BAD_PDU ;
 int SDP_TRACE_WARNING (char*,int) ;
 int btu_start_timer (int *,int ,int ) ;
 int process_service_attr_req (TYPE_1__*,int,int,int*,int*) ;
 int process_service_search (TYPE_1__*,int,int,int*,int*) ;
 int process_service_search_attr_req (TYPE_1__*,int,int,int*,int*) ;
 int sdpu_build_n_send_error (TYPE_1__*,int,int ,int ) ;

void sdp_server_handle_client_req (tCONN_CB *p_ccb, BT_HDR *p_msg)
{
    UINT8 *p_req = (UINT8 *) (p_msg + 1) + p_msg->offset;
    UINT8 *p_req_end = p_req + p_msg->len;
    UINT8 pdu_id;
    UINT16 trans_num, param_len;



    btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_SDP, SDP_INACT_TIMEOUT);


    pdu_id = *p_req++;


    BE_STREAM_TO_UINT16 (trans_num, p_req);
    BE_STREAM_TO_UINT16 (param_len, p_req);

    if ((p_req + param_len) != p_req_end) {
        sdpu_build_n_send_error (p_ccb, trans_num, SDP_INVALID_PDU_SIZE, SDP_TEXT_BAD_HEADER);
        return;
    }

    switch (pdu_id) {
    case 128:
        process_service_search (p_ccb, trans_num, param_len, p_req, p_req_end);
        break;

    case 130:
        process_service_attr_req (p_ccb, trans_num, param_len, p_req, p_req_end);
        break;

    case 129:
        process_service_search_attr_req (p_ccb, trans_num, param_len, p_req, p_req_end);
        break;

    default:
        sdpu_build_n_send_error (p_ccb, trans_num, SDP_INVALID_REQ_SYNTAX, SDP_TEXT_BAD_PDU);
        SDP_TRACE_WARNING ("SDP - server got unknown PDU: 0x%x\n", pdu_id);
        break;
    }
}
