
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bondport_ref ;
struct TYPE_4__ {int po_transmit_timer; int po_wait_while_timer; int po_periodic_timer; int po_current_while_timer; int po_multicast; } ;


 int FREE (TYPE_1__*,int ) ;
 int M_BOND ;
 int devtimer_release (int ) ;
 int multicast_list_remove (int *) ;

__attribute__((used)) static void
bondport_free(bondport_ref p)
{
    multicast_list_remove(&p->po_multicast);
    devtimer_release(p->po_current_while_timer);
    devtimer_release(p->po_periodic_timer);
    devtimer_release(p->po_wait_while_timer);
    devtimer_release(p->po_transmit_timer);
    FREE(p, M_BOND);
    return;
}
