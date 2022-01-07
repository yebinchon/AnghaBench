
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ in_use; } ;
struct TYPE_7__ {TYPE_6__ mon_retrans_timer; scalar_t__ wait_ack; } ;
struct TYPE_9__ {scalar_t__ rtrans_tout; scalar_t__ mon_tout; } ;
struct TYPE_8__ {TYPE_3__ fcr; } ;
struct TYPE_10__ {TYPE_1__ fcrb; TYPE_2__ our_cfg; } ;
typedef TYPE_4__ tL2C_CCB ;
typedef int UINT32 ;


 int BTU_TTYPE_L2CAP_CHNL ;
 int QUICK_TIMER_TICKS_PER_SEC ;
 int assert (int ) ;
 int btu_start_quick_timer (TYPE_6__*,int ,int) ;

void l2c_fcr_start_timer (tL2C_CCB *p_ccb)
{
    assert(p_ccb != ((void*)0));
    UINT32 tout;


    if (p_ccb->fcrb.wait_ack) {
        tout = (UINT32)p_ccb->our_cfg.fcr.mon_tout;
    } else {
        tout = (UINT32)p_ccb->our_cfg.fcr.rtrans_tout;
    }


    if (p_ccb->fcrb.mon_retrans_timer.in_use == 0) {
        btu_start_quick_timer (&p_ccb->fcrb.mon_retrans_timer, BTU_TTYPE_L2CAP_CHNL, tout * QUICK_TIMER_TICKS_PER_SEC / 1000);
    }
}
