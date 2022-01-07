
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ num_handles; int disc_state; int * handles; } ;
typedef TYPE_1__ tCONN_CB ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_8__ {scalar_t__ max_recs_per_search; } ;


 int BE_STREAM_TO_UINT16 (scalar_t__,scalar_t__*) ;
 int BE_STREAM_TO_UINT32 (int ,scalar_t__*) ;
 int BE_STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 int SDP_DISC_WAIT_ATTR ;
 int SDP_INVALID_CONT_STATE ;
 scalar_t__ SDP_MAX_CONTINUATION_LEN ;
 int SDP_NO_RECS_MATCH ;
 int SDP_TRACE_WARNING (char*) ;
 int process_service_attr_rsp (TYPE_1__*,int *) ;
 TYPE_4__ sdp_cb ;
 int sdp_disconnect (TYPE_1__*,int ) ;
 int sdp_snd_service_search_req (TYPE_1__*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void process_service_search_rsp (tCONN_CB *p_ccb, UINT8 *p_reply)
{
    UINT16 xx;
    UINT16 total, cur_handles, orig;
    UINT8 cont_len;


    p_reply += 4;
    BE_STREAM_TO_UINT16 (total, p_reply);
    BE_STREAM_TO_UINT16 (cur_handles, p_reply);

    orig = p_ccb->num_handles;
    p_ccb->num_handles += cur_handles;
    if (p_ccb->num_handles == 0) {
        SDP_TRACE_WARNING ("SDP - Rcvd ServiceSearchRsp, no matches\n");
        sdp_disconnect (p_ccb, SDP_NO_RECS_MATCH);
        return;
    }


    if (total > sdp_cb.max_recs_per_search) {
        total = sdp_cb.max_recs_per_search;
    }
    if (p_ccb->num_handles > sdp_cb.max_recs_per_search) {
        p_ccb->num_handles = sdp_cb.max_recs_per_search;
    }

    for (xx = orig; xx < p_ccb->num_handles; xx++) {
        BE_STREAM_TO_UINT32 (p_ccb->handles[xx], p_reply);
    }

    BE_STREAM_TO_UINT8 (cont_len, p_reply);
    if (cont_len != 0) {
        if (cont_len > SDP_MAX_CONTINUATION_LEN) {
            sdp_disconnect (p_ccb, SDP_INVALID_CONT_STATE);
            return;
        }

        sdp_snd_service_search_req(p_ccb, cont_len, p_reply);
    } else {

        p_ccb->disc_state = SDP_DISC_WAIT_ATTR;


        process_service_attr_rsp (p_ccb, ((void*)0));
    }
}
