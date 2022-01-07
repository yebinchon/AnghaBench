
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mon_retrans_timer; } ;
struct TYPE_5__ {TYPE_1__ fcrb; } ;
typedef TYPE_2__ tL2C_CCB ;


 int assert (int ) ;
 int btu_free_quick_timer (int *) ;

void l2c_fcr_free_timer (tL2C_CCB *p_ccb)
{
    assert(p_ccb != ((void*)0));
    btu_free_quick_timer (&p_ccb->fcrb.mon_retrans_timer);
}
