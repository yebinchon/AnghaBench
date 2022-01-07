
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t cur_uuid_idx; int timer_entry; int connection_id; int disc_state; TYPE_1__* p_db; scalar_t__ transaction_id; } ;
typedef TYPE_2__ tCONN_CB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_11__ {scalar_t__ max_recs_per_search; } ;
struct TYPE_10__ {int offset; scalar_t__ len; } ;
struct TYPE_8__ {int num_uuid_filters; int * uuid_filters; } ;
typedef TYPE_3__ BT_HDR ;


 int BTU_TTYPE_SDP ;
 int L2CAP_MIN_OFFSET ;
 int L2CA_DataWrite (int ,TYPE_3__*) ;
 int SDP_DATA_BUF_SIZE ;
 int SDP_DISC_WAIT_HANDLES ;
 int SDP_INACT_TIMEOUT ;
 int SDP_NO_RESOURCES ;
 int SDP_PDU_SERVICE_SEARCH_REQ ;
 int SDP_TRACE_WARNING (char*,int ,int ) ;
 int UINT16_TO_BE_STREAM (int *,scalar_t__) ;
 int UINT8_TO_BE_STREAM (int *,int ) ;
 int btu_start_timer (int *,int ,int ) ;
 int memcpy (int *,int *,int ) ;
 scalar_t__ osi_malloc (int ) ;
 TYPE_6__ sdp_cb ;
 int sdp_disconnect (TYPE_2__*,int ) ;
 int * sdpu_build_uuid_seq (int *,int,int *) ;

__attribute__((used)) static void sdp_snd_service_search_req(tCONN_CB *p_ccb, UINT8 cont_len, UINT8 *p_cont)
{
    UINT8 *p, *p_start, *p_param_len;
    BT_HDR *p_cmd;
    UINT16 param_len;


    if ((p_cmd = (BT_HDR *) osi_malloc(SDP_DATA_BUF_SIZE)) == ((void*)0)) {
        sdp_disconnect (p_ccb, SDP_NO_RESOURCES);
        return;
    }

    p_cmd->offset = L2CAP_MIN_OFFSET;
    p = p_start = (UINT8 *)(p_cmd + 1) + L2CAP_MIN_OFFSET;


    UINT8_TO_BE_STREAM (p, SDP_PDU_SERVICE_SEARCH_REQ);
    UINT16_TO_BE_STREAM (p, p_ccb->transaction_id);
    p_ccb->transaction_id++;


    p_param_len = p;
    p += 2;





    p = sdpu_build_uuid_seq (p, p_ccb->p_db->num_uuid_filters, p_ccb->p_db->uuid_filters);



    UINT16_TO_BE_STREAM (p, sdp_cb.max_recs_per_search);


    UINT8_TO_BE_STREAM (p, cont_len);


    if (cont_len && p_cont) {
        memcpy(p, p_cont, cont_len);
        p += cont_len;
    }


    param_len = (UINT16)(p - p_param_len - 2);
    UINT16_TO_BE_STREAM (p_param_len, param_len);

    p_ccb->disc_state = SDP_DISC_WAIT_HANDLES;


    p_cmd->len = (UINT16)(p - p_start);


    SDP_TRACE_WARNING("sdp_snd_service_search_req cont_len :%d disc_state:%d\n", cont_len, p_ccb->disc_state);



    L2CA_DataWrite (p_ccb->connection_id, p_cmd);


    btu_start_timer (&p_ccb->timer_entry, BTU_TTYPE_SDP, SDP_INACT_TIMEOUT);

}
