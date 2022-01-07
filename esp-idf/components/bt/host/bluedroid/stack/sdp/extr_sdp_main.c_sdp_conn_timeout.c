
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user_data; int (* p_cb2 ) (int ,int ) ;int (* p_cb ) (int ) ;int connection_id; int con_state; } ;
typedef TYPE_1__ tCONN_CB ;


 int L2CA_DisconnectReq (int ) ;
 int SDP_CONN_FAILED ;
 int SDP_TRACE_EVENT (char*,int ,int ) ;
 int sdpu_release_ccb (TYPE_1__*) ;
 int stub1 (int ) ;
 int stub2 (int ,int ) ;

void sdp_conn_timeout (tCONN_CB *p_ccb)
{
    SDP_TRACE_EVENT ("SDP - CCB timeout in state: %d  CID: 0x%x\n",
                     p_ccb->con_state, p_ccb->connection_id);

    L2CA_DisconnectReq (p_ccb->connection_id);


    if (p_ccb->p_cb) {
        (*p_ccb->p_cb) (SDP_CONN_FAILED);
    } else if (p_ccb->p_cb2) {
        (*p_ccb->p_cb2) (SDP_CONN_FAILED, p_ccb->user_data);
    }

    sdpu_release_ccb (p_ccb);
}
