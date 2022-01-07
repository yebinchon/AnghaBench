
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ connection_id; int con_state; int * device_address; int con_flags; } ;
typedef TYPE_1__ tCONN_CB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
typedef int BD_ADDR ;


 scalar_t__ L2CA_ConnectReq (int ,int *) ;
 int SDP_FLAGS_IS_ORIG ;
 int SDP_PSM ;
 int SDP_STATE_CONN_SETUP ;
 int SDP_TRACE_EVENT (char*) ;
 int SDP_TRACE_WARNING (char*) ;
 int memcpy (int *,int *,int) ;
 TYPE_1__* sdpu_allocate_ccb () ;
 int sdpu_release_ccb (TYPE_1__*) ;

tCONN_CB *sdp_conn_originate (UINT8 *p_bd_addr)
{
    tCONN_CB *p_ccb;
    UINT16 cid;


    if ((p_ccb = sdpu_allocate_ccb()) == ((void*)0)) {
        SDP_TRACE_WARNING ("SDP - no spare CCB for orig\n");
        return (((void*)0));
    }

    SDP_TRACE_EVENT ("SDP - Originate started\n");


    p_ccb->con_flags |= SDP_FLAGS_IS_ORIG;


    memcpy (&p_ccb->device_address[0], p_bd_addr, sizeof (BD_ADDR));


    p_ccb->con_state = SDP_STATE_CONN_SETUP;

    cid = L2CA_ConnectReq (SDP_PSM, p_bd_addr);


    if (cid != 0) {
        p_ccb->connection_id = cid;

        return (p_ccb);
    } else {
        SDP_TRACE_WARNING ("SDP - Originate failed\n");
        sdpu_release_ccb (p_ccb);
        return (((void*)0));
    }
}
