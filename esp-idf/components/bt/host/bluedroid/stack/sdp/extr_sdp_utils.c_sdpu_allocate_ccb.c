
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ param; } ;
struct TYPE_6__ {scalar_t__ con_state; TYPE_5__ timer_entry; } ;
typedef TYPE_1__ tCONN_CB ;
typedef scalar_t__ UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_7__ {TYPE_1__* ccb; } ;


 scalar_t__ SDP_MAX_CONNECTIONS ;
 scalar_t__ SDP_STATE_IDLE ;
 int btu_free_timer (TYPE_5__*) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_3__ sdp_cb ;

tCONN_CB *sdpu_allocate_ccb (void)
{
    UINT16 xx;
    tCONN_CB *p_ccb;


    for (xx = 0, p_ccb = sdp_cb.ccb; xx < SDP_MAX_CONNECTIONS; xx++, p_ccb++) {
        if (p_ccb->con_state == SDP_STATE_IDLE) {
            btu_free_timer(&p_ccb->timer_entry);
            memset (p_ccb, 0, sizeof (tCONN_CB));

            p_ccb->timer_entry.param = (UINT32) p_ccb;

            return (p_ccb);
        }
    }


    return (((void*)0));
}
