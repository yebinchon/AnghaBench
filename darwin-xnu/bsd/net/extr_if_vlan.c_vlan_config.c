
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int * vlan_parent_ref ;
typedef int u_int16_t ;
struct ifnet {int if_eflags; } ;
typedef TYPE_1__* ifvlan_ref ;
typedef int ifnet_offload_t ;
typedef int caddr_t ;
struct TYPE_12__ {scalar_t__ ifv_mtufudge; scalar_t__ ifv_encaplen; scalar_t__ ifv_flags; int ifv_multicast; int * ifv_vlp; } ;
struct TYPE_11__ {int parent_list; } ;


 int EADDRINUSE ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ ETHERMTU ;
 int ETHER_ADDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int FALSE ;
 int IFEF_BOND ;
 int IFEF_VLAN ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_RUNNING ;
 int IFF_SIMPLEX ;
 int IFF_UP ;
 int IFNET_VLAN_MTU ;
 int IFNET_VLAN_TAGGING ;
 int IFT_ETHER ;
 int IF_LLADDR (struct ifnet*) ;
 int LIST_INSERT_HEAD (int *,int *,int ) ;
 int LIST_REMOVE (int *,int ) ;
 int SIOCSIFFLAGS ;
 int TRUE ;
 TYPE_10__* g_vlan ;
 int ifnet_eflags (struct ifnet*) ;
 int ifnet_flags (struct ifnet*) ;
 TYPE_1__* ifnet_get_ifvlan (struct ifnet*) ;
 TYPE_1__* ifnet_get_ifvlan_retained (struct ifnet*) ;
 int ifnet_ioctl (struct ifnet*,int ,int ,int ) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 int ifnet_offload (struct ifnet*) ;
 int ifnet_set_eflags (struct ifnet*,int ,int ) ;
 int ifnet_set_flags (struct ifnet*,int,int) ;
 int ifnet_set_lladdr_and_type (struct ifnet*,int ,int ,int ) ;
 int ifnet_set_mtu (struct ifnet*,scalar_t__) ;
 int ifnet_set_offload (struct ifnet*,int) ;
 scalar_t__ ifvlan_flags_detaching (TYPE_1__*) ;
 int ifvlan_flags_set_ready (TYPE_1__*) ;
 int ifvlan_release (TYPE_1__*) ;
 int ifvlan_retain (TYPE_1__*) ;
 int multicast_list_program (int *,struct ifnet*,struct ifnet*) ;
 int * parent_list_lookup (struct ifnet*) ;
 int vlan_assert_lock_held () ;
 int vlan_attach_protocol (struct ifnet*) ;
 int vlan_detach_protocol (struct ifnet*) ;
 int vlan_lock () ;
 int vlan_parent_add_vlan (int *,TYPE_1__*,int) ;
 int vlan_parent_create (struct ifnet*,int **) ;
 scalar_t__ vlan_parent_flags_detaching (int *) ;
 scalar_t__ vlan_parent_flags_supports_vlan_mtu (int *) ;
 int * vlan_parent_lookup_tag (int *,int) ;
 scalar_t__ vlan_parent_no_vlans (int *) ;
 int vlan_parent_release (int *) ;
 int vlan_parent_remove_vlan (int *,TYPE_1__*) ;
 int vlan_parent_retain (int *) ;
 int vlan_parent_signal (int *,char*) ;
 int vlan_parent_wait (int *,char*) ;
 int vlan_unlock () ;
 int vlp_parent_list ;

__attribute__((used)) static int
vlan_config(struct ifnet * ifp, struct ifnet * p, int tag)
{
    int error;
    int first_vlan = FALSE;
    ifvlan_ref ifv = ((void*)0);
    int ifv_added = FALSE;
    int need_vlp_release = 0;
    vlan_parent_ref new_vlp = ((void*)0);
    ifnet_offload_t offload;
    u_int16_t parent_flags;
    vlan_parent_ref vlp = ((void*)0);


    error = vlan_parent_create(p, &new_vlp);
    if (error != 0) {
 return (error);
    }

    vlan_lock();
    ifv = ifnet_get_ifvlan_retained(ifp);
    if (ifv == ((void*)0) || ifv->ifv_vlp != ((void*)0)) {
 vlan_unlock();
 if (ifv != ((void*)0)) {
     ifvlan_release(ifv);
 }
 vlan_parent_release(new_vlp);
 return (EBUSY);
    }
    vlp = parent_list_lookup(p);
    if (vlp != ((void*)0)) {
 vlan_parent_retain(vlp);
 need_vlp_release++;
 if (vlan_parent_lookup_tag(vlp, tag) != ((void*)0)) {

     error = EADDRINUSE;
     goto unlock_done;
 }
    }
    else {

 vlan_parent_retain(new_vlp);


 LIST_INSERT_HEAD(&g_vlan->parent_list, new_vlp, vlp_parent_list);
 vlp = new_vlp;

 vlan_parent_retain(vlp);
 need_vlp_release++;
    }


    vlan_parent_wait(vlp, "vlan_config");

    if (ifnet_get_ifvlan(ifp) != ifv) {
 error = EINVAL;
 goto signal_done;
    }


    if (parent_list_lookup(p) != vlp) {
 error = EBUSY;
 goto signal_done;
    }

    if (vlan_parent_flags_detaching(vlp)
 || ifvlan_flags_detaching(ifv) || ifv->ifv_vlp != ((void*)0)) {
 error = EBUSY;
 goto signal_done;
    }


    if (vlan_parent_lookup_tag(vlp, tag) != ((void*)0)) {

 error = EADDRINUSE;
 goto signal_done;
    }

    if (vlan_parent_no_vlans(vlp)) {
 first_vlan = TRUE;
    }
    vlan_parent_add_vlan(vlp, ifv, tag);
    ifvlan_retain(ifv);
    ifv_added = TRUE;


    ifnet_lock_exclusive(p);
    if ((ifnet_eflags(p) & IFEF_BOND) != 0) {
 ifnet_lock_done(p);

 error = EBUSY;
 goto signal_done;
    }


    p->if_eflags |= IFEF_VLAN;
    ifnet_lock_done(p);
    vlan_unlock();

    if (first_vlan) {

 error = vlan_attach_protocol(p);
 if (error) {
     vlan_lock();
     goto signal_done;
 }
    }


    error = multicast_list_program(&ifv->ifv_multicast, ifp, p);
    if (error != 0) {
 if (first_vlan) {
     (void)vlan_detach_protocol(p);
 }
 vlan_lock();
 goto signal_done;
    }


    ifnet_set_lladdr_and_type(ifp, IF_LLADDR(p), ETHER_ADDR_LEN, IFT_ETHER);


    vlan_lock();

    ifv->ifv_encaplen = ETHER_VLAN_ENCAP_LEN;
    ifv->ifv_flags = 0;
    if (vlan_parent_flags_supports_vlan_mtu(vlp)) {
 ifv->ifv_mtufudge = 0;
    } else {







 ifv->ifv_mtufudge = ifv->ifv_encaplen;
    }
    ifnet_set_mtu(ifp, ETHERMTU - ifv->ifv_mtufudge);





    parent_flags = ifnet_flags(p)
 & (IFF_BROADCAST | IFF_MULTICAST | IFF_SIMPLEX);
    ifnet_set_flags(ifp, parent_flags,
      IFF_BROADCAST | IFF_MULTICAST | IFF_SIMPLEX);


    offload = ifnet_offload(p) & ~(IFNET_VLAN_TAGGING | IFNET_VLAN_MTU);
    ifnet_set_offload(ifp, offload);

    ifnet_set_flags(ifp, IFF_RUNNING, IFF_RUNNING);
    ifvlan_flags_set_ready(ifv);
    vlan_parent_signal(vlp, "vlan_config");
    vlan_unlock();
    if (new_vlp != vlp) {

 vlan_parent_release(new_vlp);
    }
    if (ifv != ((void*)0)) {
 ifvlan_release(ifv);
    }
    if (first_vlan) {

 ifnet_set_flags(p, IFF_UP, IFF_UP);
 (void)ifnet_ioctl(p, 0, SIOCSIFFLAGS, (caddr_t)((void*)0));
    }
    return 0;

 signal_done:
    vlan_assert_lock_held();

    if (ifv_added) {
 vlan_parent_remove_vlan(vlp, ifv);
 if (!vlan_parent_flags_detaching(vlp) && vlan_parent_no_vlans(vlp)) {

     ifnet_set_eflags(p, 0, IFEF_VLAN);
     LIST_REMOVE(vlp, vlp_parent_list);

     need_vlp_release++;


     need_vlp_release++;
 }
    }
    vlan_parent_signal(vlp, "vlan_config");

 unlock_done:
    vlan_unlock();

    while (need_vlp_release--) {
 vlan_parent_release(vlp);
    }
    if (new_vlp != vlp) {
 vlan_parent_release(new_vlp);
    }
    if (ifv != ((void*)0)) {
 if (ifv_added) {
     ifvlan_release(ifv);
 }
 ifvlan_release(ifv);
    }
    return (error);
}
