
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct ifnet {int dummy; } ;
typedef TYPE_1__* ifbond_ref ;
struct TYPE_10__ {int ifb_mode; scalar_t__ ifb_distributing_count; int ifb_last_link_event; int * ifb_active_lag; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int IF_BOND_MODE_LACP ;
 int KEV_DL_LINK_OFF ;
 int KEV_DL_LINK_ON ;
 int bond_lock () ;
 int bond_set_lacp_mode (TYPE_1__*) ;
 int bond_set_static_mode (TYPE_1__*) ;
 int bond_unlock () ;
 scalar_t__ ifbond_flags_if_detaching (TYPE_1__*) ;
 int ifbond_release (TYPE_1__*) ;
 int ifbond_retain (TYPE_1__*) ;
 scalar_t__ ifbond_selection (TYPE_1__*) ;
 int ifbond_signal (TYPE_1__*,char*) ;
 int ifbond_wait (TYPE_1__*,char*) ;
 scalar_t__ ifnet_softc (struct ifnet*) ;
 int interface_link_event (struct ifnet*,int) ;

__attribute__((used)) static int
bond_set_mode(struct ifnet * ifp, int mode)
{
    int error = 0;
    int event_code = 0;
    ifbond_ref ifb;

    bond_lock();
    ifb = (ifbond_ref)ifnet_softc(ifp);
    if (ifb == ((void*)0) || ifbond_flags_if_detaching(ifb)) {
 bond_unlock();
 return ((ifb == ((void*)0)) ? EOPNOTSUPP : EBUSY);
    }
    if (ifb->ifb_mode == mode) {
 bond_unlock();
 return (0);
    }

    ifbond_retain(ifb);
    ifbond_wait(ifb, "bond_set_mode");


    if (ifb->ifb_mode == mode) {

 goto signal_done;
    }

    ifb->ifb_mode = mode;
    if (mode == IF_BOND_MODE_LACP) {
 bond_set_lacp_mode(ifb);


 if (ifbond_selection(ifb)) {
     event_code = (ifb->ifb_active_lag == ((void*)0))
  ? KEV_DL_LINK_OFF
  : KEV_DL_LINK_ON;
 }
    } else {
 bond_set_static_mode(ifb);
 event_code = (ifb->ifb_distributing_count == 0)
     ? KEV_DL_LINK_OFF
     : KEV_DL_LINK_ON;
    }
    ifb->ifb_last_link_event = event_code;

 signal_done:
    ifbond_signal(ifb, "bond_set_mode");
    bond_unlock();
    ifbond_release(ifb);

    if (event_code != 0) {
 interface_link_event(ifp, event_code);
    }
    return (error);
}
