
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef int * ifvlan_ref ;


 int TRUE ;
 int ifnet_detach (struct ifnet*) ;
 int * ifnet_get_ifvlan_retained (struct ifnet*) ;
 int ifvlan_release (int *) ;
 int vlan_lock () ;
 scalar_t__ vlan_remove (int *,int ) ;
 int vlan_unlock () ;

__attribute__((used)) static int
vlan_clone_destroy(struct ifnet *ifp)
{
    ifvlan_ref ifv;

    vlan_lock();
    ifv = ifnet_get_ifvlan_retained(ifp);
    if (ifv == ((void*)0)) {
 vlan_unlock();
 return 0;
    }
    if (vlan_remove(ifv, TRUE) == 0) {
 vlan_unlock();
 ifvlan_release(ifv);
 return 0;
    }
    vlan_unlock();
    ifvlan_release(ifv);
    ifnet_detach(ifp);

    return 0;
}
