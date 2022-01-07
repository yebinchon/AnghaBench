
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bondport_ref ;
struct TYPE_3__ {int po_transmit_timer; int po_wait_while_timer; int po_periodic_timer; int po_current_while_timer; } ;


 int devtimer_invalidate (int ) ;

__attribute__((used)) static void
bondport_invalidate_timers(bondport_ref p)
{
    devtimer_invalidate(p->po_current_while_timer);
    devtimer_invalidate(p->po_periodic_timer);
    devtimer_invalidate(p->po_wait_while_timer);
    devtimer_invalidate(p->po_transmit_timer);
}
