
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tSDP_DISC_CMPL_CB2 ;
typedef int tSDP_DISCOVERY_DB ;
struct TYPE_3__ {void* user_data; int is_attr_search; int * p_cb2; int * p_db; int disc_state; } ;
typedef TYPE_1__ tCONN_CB ;
typedef int UINT8 ;
typedef int BOOLEAN ;


 int FALSE ;
 int SDP_DISC_WAIT_CONN ;
 int TRUE ;
 TYPE_1__* sdp_conn_originate (int *) ;

BOOLEAN SDP_ServiceSearchAttributeRequest2 (UINT8 *p_bd_addr, tSDP_DISCOVERY_DB *p_db,
        tSDP_DISC_CMPL_CB2 *p_cb2, void *user_data)
{

    tCONN_CB *p_ccb;


    p_ccb = sdp_conn_originate (p_bd_addr);

    if (!p_ccb) {
        return (FALSE);
    }

    p_ccb->disc_state = SDP_DISC_WAIT_CONN;
    p_ccb->p_db = p_db;
    p_ccb->p_cb2 = p_cb2;

    p_ccb->is_attr_search = TRUE;
    p_ccb->user_data = user_data;

    return (TRUE);



}
