
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* vlan_parent_ref ;
struct ifnet {int dummy; } ;
typedef TYPE_2__* ifvlan_ref ;
struct TYPE_16__ {struct ifnet* ifv_ifp; } ;
struct TYPE_15__ {int vlp_vlan_list; } ;


 int FALSE ;
 int IFEF_VLAN ;
 TYPE_2__* LIST_FIRST (int *) ;
 TYPE_2__* LIST_NEXT (TYPE_2__*,int ) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int ifnet_detach (struct ifnet*) ;
 int ifnet_set_eflags (struct ifnet*,int ,int ) ;
 int ifv_vlan_list ;
 TYPE_1__* parent_list_lookup (struct ifnet*) ;
 int vlan_lock () ;
 scalar_t__ vlan_parent_flags_detaching (TYPE_1__*) ;
 int vlan_parent_flags_set_detaching (TYPE_1__*) ;
 int vlan_parent_release (TYPE_1__*) ;
 int vlan_parent_retain (TYPE_1__*) ;
 int vlan_parent_signal (TYPE_1__*,char*) ;
 int vlan_parent_wait (TYPE_1__*,char*) ;
 int vlan_remove (TYPE_2__*,int ) ;
 int vlan_unlock () ;
 int vlp_parent_list ;

__attribute__((used)) static void
vlan_parent_remove_all_vlans(struct ifnet * p)
{
    ifvlan_ref ifv;
    int need_vlp_release = 0;
    ifvlan_ref next;
    vlan_parent_ref vlp;

    vlan_lock();
    vlp = parent_list_lookup(p);
    if (vlp == ((void*)0) || vlan_parent_flags_detaching(vlp)) {

 vlan_unlock();
 return;
    }
    vlan_parent_flags_set_detaching(vlp);
    vlan_parent_retain(vlp);
    vlan_parent_wait(vlp, "vlan_parent_remove_all_vlans");
    need_vlp_release++;


    if (parent_list_lookup(p) != vlp) {
 goto signal_done;
    }

    for (ifv = LIST_FIRST(&vlp->vlp_vlan_list); ifv != ((void*)0); ifv = next) {
 struct ifnet * ifp = ifv->ifv_ifp;
 int removed;

 next = LIST_NEXT(ifv, ifv_vlan_list);
 removed = vlan_remove(ifv, FALSE);
 if (removed) {
     vlan_unlock();
     ifnet_detach(ifp);
     vlan_lock();
 }
    }


    ifnet_set_eflags(p, 0, IFEF_VLAN);

    LIST_REMOVE(vlp, vlp_parent_list);
    need_vlp_release++;
    need_vlp_release++;

 signal_done:
    vlan_parent_signal(vlp, "vlan_parent_remove_all_vlans");
    vlan_unlock();

    while (need_vlp_release--) {
 vlan_parent_release(vlp);
    }
    return;
}
