
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef TYPE_1__* vlan_parent_ref ;
struct ifnet {int dummy; } ;
typedef TYPE_2__* ifvlan_ref ;
struct TYPE_18__ {scalar_t__ ifv_flags; scalar_t__ ifv_mtufudge; int ifv_multicast; TYPE_1__* ifv_vlp; struct ifnet* ifv_ifp; } ;
struct TYPE_17__ {int vlp_vlan_list; struct ifnet* vlp_ifp; } ;
struct TYPE_16__ {scalar_t__ verbose; } ;


 scalar_t__ ETHERMTU ;
 int FALSE ;
 int IFEF_VLAN ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_RUNNING ;
 int IFF_SIMPLEX ;
 int IFT_L2VLAN ;
 int LIST_FIRST (int *) ;
 int * LIST_NEXT (int ,int ) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int TRUE ;
 TYPE_14__* g_vlan ;
 TYPE_2__* ifnet_get_ifvlan (struct ifnet*) ;
 char* ifnet_name (struct ifnet*) ;
 int ifnet_set_eflags (struct ifnet*,int ,int ) ;
 int ifnet_set_flags (struct ifnet*,int ,int) ;
 int ifnet_set_lladdr_and_type (struct ifnet*,int *,int ,int ) ;
 int ifnet_set_mtu (struct ifnet*,int ) ;
 int ifnet_set_offload (struct ifnet*,int ) ;
 int ifnet_unit (struct ifnet*) ;
 int ifv_vlan_list ;
 int ifvlan_new_mtu (TYPE_2__*,scalar_t__) ;
 int ifvlan_release (TYPE_2__*) ;
 int multicast_list_remove (int *) ;
 int printf (char*,char*,int ) ;
 int vlan_assert_lock_held () ;
 int vlan_detach_protocol (struct ifnet*) ;
 int vlan_lock () ;
 int vlan_parent_flags_detaching (TYPE_1__*) ;
 int vlan_parent_release (TYPE_1__*) ;
 int vlan_parent_remove_vlan (TYPE_1__*,TYPE_2__*) ;
 int vlan_parent_retain (TYPE_1__*) ;
 int vlan_parent_signal (TYPE_1__*,char*) ;
 int vlan_parent_wait (TYPE_1__*,char*) ;
 int vlan_unlock () ;
 int vlp_parent_list ;

__attribute__((used)) static int
vlan_unconfig(ifvlan_ref ifv, int need_to_wait)
{
    struct ifnet * ifp = ifv->ifv_ifp;
    int last_vlan = FALSE;
    int need_ifv_release = 0;
    int need_vlp_release = 0;
    struct ifnet * p;
    vlan_parent_ref vlp;

    vlan_assert_lock_held();
    vlp = ifv->ifv_vlp;
    if (vlp == ((void*)0)) {
 return (0);
    }
    if (need_to_wait) {
 need_vlp_release++;
 vlan_parent_retain(vlp);
 vlan_parent_wait(vlp, "vlan_unconfig");


 if (ifv != ifnet_get_ifvlan(ifp)) {
     goto signal_done;
 }
 if (ifv->ifv_vlp != vlp) {

     goto signal_done;
 }
    }


    need_vlp_release++;
    p = vlp->vlp_ifp;


    if (LIST_NEXT(LIST_FIRST(&vlp->vlp_vlan_list), ifv_vlan_list) == ((void*)0)) {
 if (g_vlan->verbose) {
     printf("vlan_unconfig: last vlan on %s%d\n",
     ifnet_name(p), ifnet_unit(p));
 }
 last_vlan = TRUE;
    }


    (void)ifvlan_new_mtu(ifv, ETHERMTU - ifv->ifv_mtufudge);

    vlan_unlock();


    (void)multicast_list_remove(&ifv->ifv_multicast);


    ifnet_set_lladdr_and_type(ifp, ((void*)0), 0, IFT_L2VLAN);


    if (last_vlan) {
 (void)vlan_detach_protocol(p);
    }

    vlan_lock();


    ifnet_set_mtu(ifp, 0);
    ifnet_set_flags(ifp, 0,
      IFF_BROADCAST | IFF_MULTICAST | IFF_SIMPLEX | IFF_RUNNING);
    ifnet_set_offload(ifp, 0);
    ifv->ifv_mtufudge = 0;


    vlan_parent_remove_vlan(vlp, ifv);
    ifv->ifv_flags = 0;


    need_ifv_release++;


    if (last_vlan && !vlan_parent_flags_detaching(vlp)) {

 ifnet_set_eflags(p, 0, IFEF_VLAN);
 LIST_REMOVE(vlp, vlp_parent_list);


 need_vlp_release++;


 need_vlp_release++;
    }

 signal_done:
    if (need_to_wait) {
 vlan_parent_signal(vlp, "vlan_unconfig");
    }
    vlan_unlock();
    while (need_ifv_release--) {
 ifvlan_release(ifv);
    }
    while (need_vlp_release--) {
 vlan_parent_release(vlp);
    }
    vlan_lock();
    return (0);
}
