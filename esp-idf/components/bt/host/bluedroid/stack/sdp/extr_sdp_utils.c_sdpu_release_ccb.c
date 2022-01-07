
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rsp_list; int is_attr_search; int con_state; int timer_entry; } ;
typedef TYPE_1__ tCONN_CB ;


 int FALSE ;
 int SDP_STATE_IDLE ;
 int SDP_TRACE_DEBUG (char*) ;
 int btu_free_timer (int *) ;
 int osi_free (int *) ;

void sdpu_release_ccb (tCONN_CB *p_ccb)
{

    btu_free_timer(&p_ccb->timer_entry);


    p_ccb->con_state = SDP_STATE_IDLE;

    p_ccb->is_attr_search = FALSE;



    if (p_ccb->rsp_list) {
        SDP_TRACE_DEBUG("releasing SDP rsp_list\n");

        osi_free(p_ccb->rsp_list);
        p_ccb->rsp_list = ((void*)0);
    }
}
