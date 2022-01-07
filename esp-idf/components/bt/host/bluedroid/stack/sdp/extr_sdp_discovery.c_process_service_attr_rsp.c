
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {size_t list_len; int* rsp_list; scalar_t__ cur_handle; scalar_t__ num_handles; scalar_t__ transaction_id; int timer_entry; int connection_id; TYPE_1__* p_db; int * handles; } ;
typedef TYPE_2__ tCONN_CB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_13__ {scalar_t__ max_attr_list_size; } ;
struct TYPE_12__ {int offset; scalar_t__ len; } ;
struct TYPE_10__ {int num_attr_filters; int * attr_filters; } ;
typedef TYPE_3__ BT_HDR ;
typedef scalar_t__ BOOLEAN ;


 int BE_STREAM_TO_UINT16 (scalar_t__,int*) ;
 int BTU_TTYPE_SDP ;
 scalar_t__ FALSE ;
 int L2CAP_MIN_OFFSET ;
 int L2CA_DataWrite (int ,TYPE_3__*) ;
 scalar_t__ SDP_DATA_BUF_SIZE ;
 int SDP_DB_FULL ;
 int SDP_INACT_TIMEOUT ;
 int SDP_INVALID_CONT_STATE ;
 int SDP_INVALID_PDU_SIZE ;
 int SDP_MAX_CONTINUATION_LEN ;
 scalar_t__ SDP_MAX_LIST_BYTE_COUNT ;
 int SDP_NO_RESOURCES ;
 int SDP_PDU_SERVICE_ATTR_REQ ;
 int SDP_RAW_DATA_INCLUDED ;
 int SDP_SUCCESS ;
 int SDP_TRACE_ERROR (char*) ;
 int SDP_TRACE_WARNING (char*,...) ;
 scalar_t__ TRUE ;
 int UINT16_TO_BE_STREAM (int*,scalar_t__) ;
 int UINT32_TO_BE_STREAM (int*,int ) ;
 int UINT8_TO_BE_STREAM (int*,int ) ;
 int btu_start_timer (int *,int ,int ) ;
 int memcpy (int*,int*,int) ;
 scalar_t__ osi_malloc (scalar_t__) ;
 int save_attr_seq (TYPE_2__*,int*,int*) ;
 TYPE_6__ sdp_cb ;
 int sdp_copy_raw_data (TYPE_2__*,scalar_t__) ;
 int sdp_disconnect (TYPE_2__*,int ) ;
 int* sdpu_build_attrib_seq (int*,int *,int ) ;

__attribute__((used)) static void process_service_attr_rsp (tCONN_CB *p_ccb, UINT8 *p_reply)
{
    UINT8 *p_start, *p_param_len;
    UINT16 param_len, list_byte_count;
    BOOLEAN cont_request_needed = FALSE;


    SDP_TRACE_WARNING("process_service_attr_rsp raw inc:%d\n",
                      SDP_RAW_DATA_INCLUDED);


    if (p_reply) {

        SDP_TRACE_WARNING("ID & len: 0x%02x-%02x-%02x-%02x\n",
                          p_reply[0], p_reply[1], p_reply[2], p_reply[3]);


        p_reply += 4;

        BE_STREAM_TO_UINT16 (list_byte_count, p_reply);

        SDP_TRACE_WARNING("list_byte_count:%d\n", list_byte_count);



        if ((p_ccb->list_len + list_byte_count) > SDP_MAX_LIST_BYTE_COUNT) {
            sdp_disconnect (p_ccb, SDP_INVALID_PDU_SIZE);
            return;
        }


        SDP_TRACE_WARNING("list_len: %d, list_byte_count: %d\n",
                          p_ccb->list_len, list_byte_count);

        if (p_ccb->rsp_list == ((void*)0)) {
            p_ccb->rsp_list = (UINT8 *)osi_malloc (SDP_MAX_LIST_BYTE_COUNT);
            if (p_ccb->rsp_list == ((void*)0)) {
                SDP_TRACE_ERROR ("SDP - no gki buf to save rsp\n");
                sdp_disconnect (p_ccb, SDP_NO_RESOURCES);
                return;
            }
        }
        memcpy (&p_ccb->rsp_list[p_ccb->list_len], p_reply, list_byte_count);
        p_ccb->list_len += list_byte_count;
        p_reply += list_byte_count;

        SDP_TRACE_WARNING("list_len: %d(attr_rsp)\n", p_ccb->list_len);


        SDP_TRACE_WARNING("*p_reply:%d(%d)\n", *p_reply, SDP_MAX_CONTINUATION_LEN);

        if (*p_reply) {
            if (*p_reply > SDP_MAX_CONTINUATION_LEN) {
                sdp_disconnect (p_ccb, SDP_INVALID_CONT_STATE);
                return;
            }
            cont_request_needed = TRUE;
        } else {


            SDP_TRACE_WARNING("process_service_attr_rsp\n");
            sdp_copy_raw_data (p_ccb, FALSE);



            if (!save_attr_seq (p_ccb, &p_ccb->rsp_list[0], &p_ccb->rsp_list[p_ccb->list_len])) {
                sdp_disconnect (p_ccb, SDP_DB_FULL);
                return;
            }
            p_ccb->list_len = 0;
            p_ccb->cur_handle++;
        }
    }


    if (p_ccb->cur_handle < p_ccb->num_handles) {
        BT_HDR *p_msg = (BT_HDR *) osi_malloc(SDP_DATA_BUF_SIZE);
        UINT8 *p;

        if (!p_msg) {
            sdp_disconnect (p_ccb, SDP_NO_RESOURCES);
            return;
        }

        p_msg->offset = L2CAP_MIN_OFFSET;
        p = p_start = (UINT8 *)(p_msg + 1) + L2CAP_MIN_OFFSET;


        UINT8_TO_BE_STREAM (p, SDP_PDU_SERVICE_ATTR_REQ);
        UINT16_TO_BE_STREAM (p, p_ccb->transaction_id);
        p_ccb->transaction_id++;


        p_param_len = p;
        p += 2;

        UINT32_TO_BE_STREAM (p, p_ccb->handles[p_ccb->cur_handle]);


        UINT16_TO_BE_STREAM (p, sdp_cb.max_attr_list_size);


        if (p_ccb->p_db->num_attr_filters) {
            p = sdpu_build_attrib_seq (p, p_ccb->p_db->attr_filters, p_ccb->p_db->num_attr_filters);
        } else {
            p = sdpu_build_attrib_seq (p, ((void*)0), 0);
        }


        if (cont_request_needed) {
            memcpy (p, p_reply, *p_reply + 1);
            p += *p_reply + 1;
        } else {
            UINT8_TO_BE_STREAM (p, 0);
        }


        param_len = (UINT16)(p - p_param_len - 2);
        UINT16_TO_BE_STREAM (p_param_len, param_len);


        p_msg->len = (UINT16)(p - p_start);


        L2CA_DataWrite (p_ccb->connection_id, p_msg);


        btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_SDP, SDP_INACT_TIMEOUT);
    } else {
        sdp_disconnect (p_ccb, SDP_SUCCESS);
        return;
    }
}
