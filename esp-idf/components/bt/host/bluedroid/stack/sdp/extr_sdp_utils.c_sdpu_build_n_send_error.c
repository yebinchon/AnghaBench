
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int connection_id; } ;
typedef TYPE_1__ tCONN_CB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_6__ {int offset; int len; } ;
typedef TYPE_2__ BT_HDR ;


 int ARRAY_TO_BE_STREAM (int *,char*,int) ;
 int L2CAP_MIN_OFFSET ;
 int L2CA_DataWrite (int ,TYPE_2__*) ;
 int SDP_DATA_BUF_SIZE ;
 int SDP_PDU_ERROR_RESPONSE ;
 int SDP_TRACE_ERROR (char*) ;
 int SDP_TRACE_WARNING (char*,int,int ) ;
 int UINT16_TO_BE_STREAM (int *,int) ;
 int UINT8_TO_BE_STREAM (int *,int ) ;
 scalar_t__ osi_malloc (int ) ;
 scalar_t__ strlen (char*) ;

void sdpu_build_n_send_error (tCONN_CB *p_ccb, UINT16 trans_num, UINT16 error_code, char *p_error_text)
{
    UINT8 *p_rsp, *p_rsp_start, *p_rsp_param_len;
    UINT16 rsp_param_len;
    BT_HDR *p_buf;


    SDP_TRACE_WARNING ("SDP - sdpu_build_n_send_error  code: 0x%x  CID: 0x%x\n",
                       error_code, p_ccb->connection_id);


    if ((p_buf = (BT_HDR *)osi_malloc(SDP_DATA_BUF_SIZE)) == ((void*)0)) {
        SDP_TRACE_ERROR ("SDP - no buf for err msg\n");
        return;
    }
    p_buf->offset = L2CAP_MIN_OFFSET;
    p_rsp = p_rsp_start = (UINT8 *)(p_buf + 1) + L2CAP_MIN_OFFSET;

    UINT8_TO_BE_STREAM (p_rsp, SDP_PDU_ERROR_RESPONSE);
    UINT16_TO_BE_STREAM (p_rsp, trans_num);


    p_rsp_param_len = p_rsp;
    p_rsp += 2;

    UINT16_TO_BE_STREAM (p_rsp, error_code);


    if (p_error_text) {
        ARRAY_TO_BE_STREAM (p_rsp, p_error_text, (int) strlen (p_error_text));
    }


    rsp_param_len = p_rsp - p_rsp_param_len - 2;
    UINT16_TO_BE_STREAM (p_rsp_param_len, rsp_param_len);


    p_buf->len = p_rsp - p_rsp_start;



    L2CA_DataWrite (p_ccb->connection_id, p_buf);
}
