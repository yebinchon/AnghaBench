
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vlan_parent_ref ;
typedef int u_int32_t ;
struct ifnet {int dummy; } ;
struct TYPE_9__ {int vlp_event_code; } ;


 int IFEF_VLAN ;
 int ifnet_eflags (struct ifnet*) ;
 TYPE_1__* parent_list_lookup (struct ifnet*) ;
 int vlan_lock () ;
 scalar_t__ vlan_parent_flags_change_in_progress (TYPE_1__*) ;
 int vlan_parent_flags_set_link_event_required (TYPE_1__*) ;
 int vlan_parent_release (TYPE_1__*) ;
 int vlan_parent_retain (TYPE_1__*) ;
 int vlan_parent_signal (TYPE_1__*,char*) ;
 int vlan_parent_wait (TYPE_1__*,char*) ;
 int vlan_unlock () ;

__attribute__((used)) static void
vlan_parent_link_event(struct ifnet * p, u_int32_t event_code)
{
    vlan_parent_ref vlp;

    vlan_lock();
    if ((ifnet_eflags(p) & IFEF_VLAN) == 0) {
 vlan_unlock();

 return;
    }
    vlp = parent_list_lookup(p);
    if (vlp == ((void*)0)) {

 vlan_unlock();
 return;
    }
    vlan_parent_flags_set_link_event_required(vlp);
    vlp->vlp_event_code = event_code;
    if (vlan_parent_flags_change_in_progress(vlp)) {

 vlan_unlock();
 return;
    }
    vlan_parent_retain(vlp);
    vlan_parent_wait(vlp, "vlan_parent_link_event");
    vlan_parent_signal(vlp, "vlan_parent_link_event");
    vlan_unlock();
    vlan_parent_release(vlp);
    return;

}
