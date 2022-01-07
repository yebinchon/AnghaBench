
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num_handles; int disc_state; scalar_t__ is_attr_search; } ;
typedef TYPE_1__ tCONN_CB ;


 int SDP_DISC_WAIT_SEARCH_ATTR ;
 int process_service_search_attr_rsp (TYPE_1__*,int *) ;
 int sdp_snd_service_search_req (TYPE_1__*,int ,int *) ;

void sdp_disc_connected (tCONN_CB *p_ccb)
{
    if (p_ccb->is_attr_search) {
        p_ccb->disc_state = SDP_DISC_WAIT_SEARCH_ATTR;

        process_service_search_attr_rsp (p_ccb, ((void*)0));
    } else {




        p_ccb->num_handles = 0;
        sdp_snd_service_search_req(p_ccb, 0, ((void*)0));
    }

}
