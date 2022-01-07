
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct media_info {int member_1; int member_0; } ;
struct ifnet {int dummy; } ;
typedef TYPE_1__* ifbond_ref ;
typedef TYPE_2__* bondport_ref ;
struct TYPE_10__ {scalar_t__ verbose; } ;
struct TYPE_9__ {int po_enabled; struct media_info po_media_info; int po_ifp; TYPE_1__* po_bond; } ;
struct TYPE_8__ {int ifb_distributing_count; scalar_t__ ifb_mode; int ifb_last_link_event; struct ifnet* ifb_ifp; int ifb_name; int * ifb_active_lag; } ;


 scalar_t__ IF_BOND_MODE_LACP ;



 int bond_lock () ;
 TYPE_2__* bond_lookup_port (struct ifnet*) ;
 int bond_remove_interface (TYPE_1__*,int ) ;
 int bond_unlock () ;
 int bondport_link_status_changed (TYPE_2__*) ;
 TYPE_4__* g_bond ;
 scalar_t__ ifbond_selection (TYPE_1__*) ;
 int interface_link_event (struct ifnet*,int) ;
 struct media_info interface_media_info (struct ifnet*) ;
 int timestamp_printf (char*,int ) ;

__attribute__((used)) static void
bond_handle_event(struct ifnet * port_ifp, int event_code)
{
    struct ifnet * bond_ifp = ((void*)0);
    ifbond_ref ifb;
    int old_distributing_count;
    bondport_ref p;
    struct media_info media_info = { 0, 0};

    switch (event_code) {
    case 130:
 break;
    case 129:
    case 128:
 media_info = interface_media_info(port_ifp);
 break;
    default:
 return;
    }
    bond_lock();
    p = bond_lookup_port(port_ifp);
    if (p == ((void*)0)) {
 bond_unlock();
 return;
    }
    ifb = p->po_bond;
    old_distributing_count = ifb->ifb_distributing_count;
    switch (event_code) {
    case 130:
 bond_remove_interface(ifb, p->po_ifp);
 break;
    case 129:
    case 128:
 p->po_media_info = media_info;
 if (p->po_enabled) {
     bondport_link_status_changed(p);
 }
 break;
    }

    if (ifb->ifb_mode == IF_BOND_MODE_LACP) {
 if (ifbond_selection(ifb)) {
     event_code = (ifb->ifb_active_lag == ((void*)0))
  ? 129
  : 128;

     bond_ifp = ifb->ifb_ifp;
     ifb->ifb_last_link_event = event_code;
 }
 else {
     event_code = (ifb->ifb_active_lag == ((void*)0))
  ? 129
  : 128;
     if (event_code != ifb->ifb_last_link_event) {
  if (g_bond->verbose) {
      timestamp_printf("%s: (event) generating LINK event\n",
         ifb->ifb_name);
  }
  bond_ifp = ifb->ifb_ifp;
  ifb->ifb_last_link_event = event_code;
     }
 }
    }
    else {




 if (old_distributing_count == 0
     && ifb->ifb_distributing_count != 0) {
     event_code = 128;
 }
 else if (old_distributing_count != 0
   && ifb->ifb_distributing_count == 0) {
     event_code = 129;
 }
 if (event_code != 0 && event_code != ifb->ifb_last_link_event) {
     bond_ifp = ifb->ifb_ifp;
     ifb->ifb_last_link_event = event_code;
 }
    }

    bond_unlock();
    if (bond_ifp != ((void*)0)) {
 interface_link_event(bond_ifp, event_code);
    }
    return;
}
