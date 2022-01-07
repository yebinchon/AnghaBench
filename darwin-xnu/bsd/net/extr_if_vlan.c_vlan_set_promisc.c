
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vlan_parent_ref ;
struct ifnet {int dummy; } ;
typedef TYPE_2__* ifvlan_ref ;
struct TYPE_9__ {TYPE_1__* ifv_vlp; } ;
struct TYPE_8__ {int vlp_ifp; } ;


 int EBUSY ;
 int IFF_PROMISC ;
 int ifnet_flags (struct ifnet*) ;
 TYPE_2__* ifnet_get_ifvlan_retained (struct ifnet*) ;
 int ifnet_set_promiscuous (int ,int) ;
 int ifvlan_flags_clear_promisc (TYPE_2__*) ;
 scalar_t__ ifvlan_flags_promisc (TYPE_2__*) ;
 int ifvlan_flags_set_promisc (TYPE_2__*) ;
 int ifvlan_release (TYPE_2__*) ;
 int vlan_lock () ;
 int vlan_unlock () ;

__attribute__((used)) static int
vlan_set_promisc(struct ifnet * ifp)
{
    int error = 0;
    ifvlan_ref ifv;
    vlan_parent_ref vlp;

    vlan_lock();
    ifv = ifnet_get_ifvlan_retained(ifp);
    if (ifv == ((void*)0)) {
 error = EBUSY;
 goto done;
    }

    vlp = ifv->ifv_vlp;
    if (vlp == ((void*)0)) {
 goto done;
    }
    if ((ifnet_flags(ifp) & IFF_PROMISC) != 0) {
 if (!ifvlan_flags_promisc(ifv)) {
     error = ifnet_set_promiscuous(vlp->vlp_ifp, 1);
     if (error == 0) {
  ifvlan_flags_set_promisc(ifv);
     }
 }
    } else {
 if (ifvlan_flags_promisc(ifv)) {
     error = ifnet_set_promiscuous(vlp->vlp_ifp, 0);
     if (error == 0) {
  ifvlan_flags_clear_promisc(ifv);
     }
 }
    }
 done:
    vlan_unlock();
    if (ifv != ((void*)0)) {
 ifvlan_release(ifv);
    }
    return (error);
}
