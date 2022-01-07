
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tSDP_DISCOVERY_DB ;
struct TYPE_4__ {int disc_state; } ;
typedef TYPE_1__ tCONN_CB ;
typedef int BOOLEAN ;


 int FALSE ;
 int SDP_CANCEL ;
 int SDP_DISC_WAIT_CANCEL ;
 int TRUE ;
 int sdp_disconnect (TYPE_1__*,int ) ;
 TYPE_1__* sdpu_find_ccb_by_db (int *) ;

BOOLEAN SDP_CancelServiceSearch (tSDP_DISCOVERY_DB *p_db)
{

    tCONN_CB *p_ccb = sdpu_find_ccb_by_db (p_db);
    if (!p_ccb) {
        return (FALSE);
    }

    sdp_disconnect (p_ccb, SDP_CANCEL);
    p_ccb->disc_state = SDP_DISC_WAIT_CANCEL;

    return (TRUE);
}
