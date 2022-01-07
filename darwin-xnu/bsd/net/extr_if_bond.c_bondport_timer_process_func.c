
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ifnet {int dummy; } ;
typedef int devtimer_ref ;
typedef int devtimer_process_func_event ;
typedef TYPE_1__* bondport_ref ;
struct TYPE_6__ {int verbose; } ;
struct TYPE_5__ {int ifb_last_link_event; struct ifnet* ifb_ifp; int ifb_name; int * ifb_active_lag; } ;
struct TYPE_4__ {TYPE_2__* po_bond; } ;


 int KEV_DL_LINK_OFF ;
 int KEV_DL_LINK_ON ;
 int bond_lock () ;
 int bond_unlock () ;
 int devtimer_arg0 (int ) ;


 int devtimer_release (int ) ;
 int devtimer_retain (int ) ;
 int devtimer_valid (int ) ;
 TYPE_3__* g_bond ;
 int ifbond_selection (TYPE_2__*) ;
 int interface_link_event (struct ifnet*,int) ;
 int timestamp_printf (char*,int ) ;

__attribute__((used)) static void
bondport_timer_process_func(devtimer_ref timer,
       devtimer_process_func_event event)
{
    bondport_ref p;

    switch (event) {
    case 129:
 bond_lock();
 devtimer_retain(timer);
 break;
    case 128:
 if (devtimer_valid(timer)) {

     int event_code = 0;
     struct ifnet * bond_ifp = ((void*)0);

     p = (bondport_ref)devtimer_arg0(timer);
     if (ifbond_selection(p->po_bond)) {
  event_code = (p->po_bond->ifb_active_lag == ((void*)0))
      ? KEV_DL_LINK_OFF
      : KEV_DL_LINK_ON;

  bond_ifp = p->po_bond->ifb_ifp;
  p->po_bond->ifb_last_link_event = event_code;
     }
     else {
  event_code = (p->po_bond->ifb_active_lag == ((void*)0))
      ? KEV_DL_LINK_OFF
      : KEV_DL_LINK_ON;
  if (event_code != p->po_bond->ifb_last_link_event) {
      if (g_bond->verbose) {
   timestamp_printf("%s: (timer) generating LINK event\n",
      p->po_bond->ifb_name);
      }
      bond_ifp = p->po_bond->ifb_ifp;
      p->po_bond->ifb_last_link_event = event_code;
  }
     }
     devtimer_release(timer);
     bond_unlock();
     if (bond_ifp != ((void*)0)) {
  interface_link_event(bond_ifp, event_code);
     }
 }
 else {

     devtimer_release(timer);
     bond_unlock();
 }
 break;
    default:
 break;
    }
}
