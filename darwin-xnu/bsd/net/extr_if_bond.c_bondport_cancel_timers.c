
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bondport_ref ;
struct TYPE_3__ {int po_transmit_timer; int po_wait_while_timer; int po_periodic_timer; int po_current_while_timer; } ;


 int devtimer_cancel (int ) ;

__attribute__((used)) static void
bondport_cancel_timers(bondport_ref p)
{
    devtimer_cancel(p->po_current_while_timer);
    devtimer_cancel(p->po_periodic_timer);
    devtimer_cancel(p->po_wait_while_timer);
    devtimer_cancel(p->po_transmit_timer);
}
