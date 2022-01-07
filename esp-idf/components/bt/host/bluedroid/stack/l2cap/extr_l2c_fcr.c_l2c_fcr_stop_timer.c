
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ in_use; } ;
struct TYPE_5__ {TYPE_4__ mon_retrans_timer; } ;
struct TYPE_6__ {TYPE_1__ fcrb; } ;
typedef TYPE_2__ tL2C_CCB ;


 int assert (int ) ;
 int btu_stop_quick_timer (TYPE_4__*) ;

void l2c_fcr_stop_timer (tL2C_CCB *p_ccb)
{
    assert(p_ccb != ((void*)0));
    if (p_ccb->fcrb.mon_retrans_timer.in_use) {
        btu_stop_quick_timer (&p_ccb->fcrb.mon_retrans_timer);
    }
}
