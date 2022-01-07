
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ con_state; int con_flags; scalar_t__ cur_uuid_idx; scalar_t__ connection_id; int user_data; int (* p_cb2 ) (scalar_t__,int ) ;int (* p_cb ) (scalar_t__) ;scalar_t__ disconnect_reason; TYPE_6__* p_db; scalar_t__ cur_handle; } ;
typedef TYPE_2__ tCONN_CB ;
typedef scalar_t__ UINT16 ;
struct TYPE_9__ {int uuid16; } ;
struct TYPE_12__ {int len; TYPE_1__ uu; } ;
struct TYPE_11__ {scalar_t__ num_uuid_filters; scalar_t__ p_first_rec; TYPE_7__* uuid_filters; } ;


 int L2CA_DisconnectReq (scalar_t__) ;
 int SDP_FLAGS_IS_ORIG ;
 scalar_t__ SDP_FindServiceInDb (TYPE_6__*,int ,int *) ;
 scalar_t__ SDP_FindServiceUUIDInDb (TYPE_6__*,TYPE_7__*,int *) ;
 scalar_t__ SDP_NO_RECS_MATCH ;
 scalar_t__ SDP_STATE_CONNECTED ;
 scalar_t__ SDP_STATE_CONN_SETUP ;
 scalar_t__ SDP_SUCCESS ;
 int SDP_TRACE_EVENT (char*,scalar_t__) ;
 int sdp_disc_connected (TYPE_2__*) ;
 int sdpu_release_ccb (TYPE_2__*) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__,int ) ;

void sdp_disconnect (tCONN_CB *p_ccb, UINT16 reason)
{
    SDP_TRACE_EVENT ("SDP - disconnect  CID: 0x%x\n", p_ccb->connection_id);


    if (p_ccb->connection_id != 0) {
        L2CA_DisconnectReq (p_ccb->connection_id);
        p_ccb->disconnect_reason = reason;
    }



    if (p_ccb->con_state == SDP_STATE_CONN_SETUP) {

        if (p_ccb->p_cb) {
            (*p_ccb->p_cb) (reason);
        } else if (p_ccb->p_cb2) {
            (*p_ccb->p_cb2) (reason, p_ccb->user_data);
        }

        sdpu_release_ccb (p_ccb);
    }

}
