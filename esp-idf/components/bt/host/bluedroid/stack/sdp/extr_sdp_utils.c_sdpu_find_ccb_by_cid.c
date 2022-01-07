
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ con_state; scalar_t__ connection_id; } ;
typedef TYPE_1__ tCONN_CB ;
typedef scalar_t__ UINT16 ;
struct TYPE_5__ {TYPE_1__* ccb; } ;


 scalar_t__ SDP_MAX_CONNECTIONS ;
 scalar_t__ SDP_STATE_IDLE ;
 TYPE_3__ sdp_cb ;

tCONN_CB *sdpu_find_ccb_by_cid (UINT16 cid)
{
    UINT16 xx;
    tCONN_CB *p_ccb;


    for (xx = 0, p_ccb = sdp_cb.ccb; xx < SDP_MAX_CONNECTIONS; xx++, p_ccb++) {
        if ((p_ccb->con_state != SDP_STATE_IDLE) && (p_ccb->connection_id == cid)) {
            return (p_ccb);
        }
    }


    return (((void*)0));
}
