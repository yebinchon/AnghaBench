
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* vlan_parent_ref ;
struct ifnet {int dummy; } ;
typedef TYPE_2__* ifvlan_ref ;
struct TYPE_13__ {int ifv_multicast; } ;
struct TYPE_12__ {struct ifnet* vlp_ifp; } ;


 scalar_t__ FALSE ;
 TYPE_2__* ifnet_get_ifvlan_retained (struct ifnet*) ;
 scalar_t__ ifnet_ifvlan_vlan_parent_ok (struct ifnet*,TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* ifvlan_get_vlan_parent_retained (TYPE_2__*) ;
 int ifvlan_release (TYPE_2__*) ;
 int multicast_list_program (int *,struct ifnet*,struct ifnet*) ;
 int vlan_lock () ;
 int vlan_parent_release (TYPE_1__*) ;
 int vlan_parent_signal (TYPE_1__*,char*) ;
 int vlan_parent_wait (TYPE_1__*,char*) ;
 int vlan_unlock () ;

__attribute__((used)) static int
vlan_setmulti(struct ifnet * ifp)
{
    int error = 0;
    ifvlan_ref ifv;
    struct ifnet * p;
    vlan_parent_ref vlp = ((void*)0);

    vlan_lock();
    ifv = ifnet_get_ifvlan_retained(ifp);
    if (ifv == ((void*)0)) {
 goto unlock_done;
    }
    vlp = ifvlan_get_vlan_parent_retained(ifv);
    if (vlp == ((void*)0)) {

 goto unlock_done;
    }
    vlan_parent_wait(vlp, "vlan_setmulti");


    if (ifnet_ifvlan_vlan_parent_ok(ifp, ifv, vlp) == FALSE) {
 goto signal_done;
    }
    p = vlp->vlp_ifp;
    vlan_unlock();


    error = multicast_list_program(&ifv->ifv_multicast, ifp, p);

    vlan_lock();

 signal_done:
    vlan_parent_signal(vlp, "vlan_setmulti");

 unlock_done:
    vlan_unlock();
    if (ifv != ((void*)0)) {
 ifvlan_release(ifv);
    }
    if (vlp != ((void*)0)) {
 vlan_parent_release(vlp);
    }
    return (error);
}
