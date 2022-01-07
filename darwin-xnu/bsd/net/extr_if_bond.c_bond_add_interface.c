
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct ifnet {int if_eflags; } ;
struct ether_addr {int dummy; } ;
typedef int ifnet_offload_t ;
typedef TYPE_2__* ifbond_ref ;
typedef TYPE_3__* bondport_ref ;
struct TYPE_23__ {int ifdm_max; int ifdm_min; int ifdm_current; } ;
struct TYPE_25__ {int po_enabled; TYPE_1__ po_devmtu; struct ether_addr const po_saved_addr; int po_media_info; int po_multicast; TYPE_2__* po_bond; } ;
struct TYPE_24__ {char* ifb_name; int ifb_port_count; int ifb_distributing_count; scalar_t__ ifb_mode; int ifb_last_link_event; scalar_t__ ifb_altmtu; int ifb_port_list; int * ifb_active_lag; TYPE_3__** ifb_distributing_array; } ;


 int BOND_ADD_PROGRESS_IN_LIST ;
 int BOND_ADD_PROGRESS_LLADDR_SET ;
 int BOND_ADD_PROGRESS_MTU_SET ;
 int BOND_ADD_PROGRESS_PROTO_ATTACHED ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETHERMTU ;
 int ETHER_ADDR_LEN ;
 int FALSE ;
 int FREE (TYPE_3__**,int ) ;
 int IFEF_BOND ;
 int IFEF_VLAN ;
 int IFF_RUNNING ;
 int IFF_UP ;
 scalar_t__ IFNET_IS_INTCOPROC (struct ifnet*) ;
 int IFT_ETHER ;
 int IFT_IEEE8023ADLAG ;
 scalar_t__ IF_BOND_MODE_LACP ;
 int * IF_LLADDR (struct ifnet*) ;
 int KEV_DL_LINK_OFF ;
 int KEV_DL_LINK_ON ;
 int M_BOND ;
 int M_WAITOK ;
 int SIOCSIFFLAGS ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_3__*,int ) ;
 int TRUE ;
 scalar_t__ _MALLOC (int,int ,int ) ;
 int bcopy (TYPE_3__**,TYPE_3__**,int) ;
 int bond_assert_lock_not_held () ;
 int bond_attach_protocol (struct ifnet*) ;
 int bond_detach_protocol (struct ifnet*) ;
 int bond_device_mtu (struct ifnet*,TYPE_2__*) ;
 int bond_lock () ;
 int * bond_lookup_port (struct ifnet*) ;
 int bond_unlock () ;
 TYPE_3__* bondport_create (struct ifnet*,int,int,int ,int*) ;
 int bondport_disable_distributing (TYPE_3__*) ;
 int bondport_enable_distributing (TYPE_3__*) ;
 int bondport_free (TYPE_3__*) ;
 char* bondport_get_name (TYPE_3__*) ;
 int bondport_start (TYPE_3__*) ;
 int ether_addr_copy (struct ether_addr const*,int *) ;
 int if_siflladdr (struct ifnet*,struct ether_addr const*) ;
 scalar_t__ ifbond_flags_if_detaching (TYPE_2__*) ;
 int ifbond_flags_lladdr (TYPE_2__*) ;
 int ifbond_release (TYPE_2__*) ;
 int ifbond_retain (TYPE_2__*) ;
 scalar_t__ ifbond_selection (TYPE_2__*) ;
 int ifbond_signal (TYPE_2__*,char*) ;
 int ifbond_wait (TYPE_2__*,char*) ;
 int ifnet_eflags (struct ifnet*) ;
 int ifnet_ioctl (struct ifnet*,int ,int ,int *) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_exclusive (struct ifnet*) ;
 scalar_t__ ifnet_mtu (struct ifnet*) ;
 int ifnet_offload (struct ifnet*) ;
 int ifnet_set_eflags (struct ifnet*,int ,int) ;
 int ifnet_set_flags (struct ifnet*,int ,int ) ;
 int ifnet_set_lladdr_and_type (struct ifnet*,int *,int ,int ) ;
 int ifnet_set_mtu (struct ifnet*,int ) ;
 int ifnet_set_offload (struct ifnet*,int) ;
 scalar_t__ ifnet_softc (struct ifnet*) ;
 int interface_link_event (struct ifnet*,int) ;
 scalar_t__ media_active (int *) ;
 int multicast_list_program (int *,struct ifnet*,struct ifnet*) ;
 int po_port_list ;
 int printf (char*,char*,...) ;
 int siocsifmtu (struct ifnet*,int) ;

__attribute__((used)) static int
bond_add_interface(struct ifnet * ifp, struct ifnet * port_ifp)
{
    int devmtu;
    int error = 0;
    int event_code = 0;
    int first = FALSE;
    ifbond_ref ifb;
    bondport_ref * new_array = ((void*)0);
    bondport_ref * old_array = ((void*)0);
    bondport_ref p;
    int progress = 0;

    if (IFNET_IS_INTCOPROC(port_ifp)) {
 return (EINVAL);
    }


    p = bondport_create(port_ifp, 0x8000, 1, 0, &error);
    if (p == ((void*)0)) {
 return (error);
    }
    bond_lock();
    ifb = (ifbond_ref)ifnet_softc(ifp);
    if (ifb == ((void*)0) || ifbond_flags_if_detaching(ifb)) {
 bond_unlock();
 bondport_free(p);
 return ((ifb == ((void*)0) ? EOPNOTSUPP : EBUSY));
    }


    devmtu = bond_device_mtu(ifp, ifb);
    if (devmtu != 0
 && (devmtu > p->po_devmtu.ifdm_max || devmtu < p->po_devmtu.ifdm_min)) {
 bond_unlock();
 printf("if_bond: interface %s doesn't support mtu %d",
        bondport_get_name(p), devmtu);
 bondport_free(p);
 return (EINVAL);
    }


    ifbond_retain(ifb);


    ifbond_wait(ifb, "bond_add_interface");

    if (ifbond_flags_if_detaching(ifb)) {

 error = EBUSY;
 goto signal_done;
    }
    if (bond_lookup_port(port_ifp) != ((void*)0)) {

 error = EBUSY;
 goto signal_done;
    }
    ifnet_lock_exclusive(port_ifp);
    if ((ifnet_eflags(port_ifp) & (IFEF_VLAN | IFEF_BOND)) != 0) {

 ifnet_lock_done(port_ifp);
 error = EBUSY;
 goto signal_done;
    }



    port_ifp->if_eflags |= IFEF_BOND;
    ifnet_lock_done(port_ifp);

    if (TAILQ_EMPTY(&ifb->ifb_port_list)) {
 ifnet_set_offload(ifp, ifnet_offload(port_ifp));
 ifnet_set_flags(ifp, IFF_RUNNING, IFF_RUNNING);
 if (ifbond_flags_lladdr(ifb) == FALSE) {
     first = TRUE;
 }
    } else {
 ifnet_offload_t ifp_offload;
 ifnet_offload_t port_ifp_offload;

 ifp_offload = ifnet_offload(ifp);
 port_ifp_offload = ifnet_offload(port_ifp);
 if (ifp_offload != port_ifp_offload) {
     ifnet_offload_t offload;

     offload = ifp_offload & port_ifp_offload;
     printf("bond_add_interface(%s, %s)  "
     "hwassist values don't match 0x%x != 0x%x, using 0x%x instead\n",
     ifb->ifb_name, bondport_get_name(p),
     ifp_offload, port_ifp_offload, offload);





     ifnet_set_offload(ifp, offload);
 }
    }
    p->po_bond = ifb;


    ether_addr_copy(&p->po_saved_addr, IF_LLADDR(port_ifp));


    TAILQ_INSERT_TAIL(&ifb->ifb_port_list, p, po_port_list);
    ifb->ifb_port_count++;


    if (ifnet_mtu(ifp) == 0) {
 ifnet_set_mtu(ifp, ETHERMTU);
    }
    bond_unlock();



    if (first) {
 ifnet_set_lladdr_and_type(ifp, IF_LLADDR(port_ifp), ETHER_ADDR_LEN,
      IFT_ETHER);
    }

    progress |= BOND_ADD_PROGRESS_IN_LIST;


    new_array = (bondport_ref *)
 _MALLOC(sizeof(*new_array) * ifb->ifb_port_count, M_BOND, M_WAITOK);
    if (new_array == ((void*)0)) {
 error = ENOMEM;
 goto failed;
    }


    error = bond_attach_protocol(port_ifp);
    if (error) {
 goto failed;
    }
    progress |= BOND_ADD_PROGRESS_PROTO_ATTACHED;


    devmtu = bond_device_mtu(ifp, ifb);
    error = siocsifmtu(port_ifp, devmtu);
    if (error != 0) {
 printf("bond_add_interface(%s, %s):"
        " SIOCSIFMTU %d failed %d\n",
        ifb->ifb_name, bondport_get_name(p), devmtu, error);
 goto failed;
    }
    progress |= BOND_ADD_PROGRESS_MTU_SET;


    error = multicast_list_program(&p->po_multicast, ifp, port_ifp);
    if (error) {
 printf("bond_add_interface(%s, %s):"
        " multicast_list_program failed %d\n",
        ifb->ifb_name, bondport_get_name(p), error);
 goto failed;
    }


    ifnet_set_flags(port_ifp, IFF_UP, IFF_UP);

    error = ifnet_ioctl(port_ifp, 0, SIOCSIFFLAGS, ((void*)0));
    if (error != 0) {
 printf("bond_add_interface(%s, %s): SIOCSIFFLAGS failed %d\n",
        ifb->ifb_name, bondport_get_name(p), error);
 goto failed;
    }


    error = if_siflladdr(port_ifp,
    (const struct ether_addr *)IF_LLADDR(ifp));
    if (error != 0) {

 printf("bond_add_interface(%s, %s): if_siflladdr failed %d\n",
        ifb->ifb_name, bondport_get_name(p), error);
 goto failed;
    }
    progress |= BOND_ADD_PROGRESS_LLADDR_SET;

    bond_lock();


    p->po_enabled = 1;


    if (ifb->ifb_distributing_count) {
 bcopy(ifb->ifb_distributing_array, new_array,
       sizeof(*new_array) * ifb->ifb_distributing_count);
    }
    old_array = ifb->ifb_distributing_array;
    ifb->ifb_distributing_array = new_array;

    if (ifb->ifb_mode == IF_BOND_MODE_LACP) {
 bondport_start(p);


 if (ifbond_selection(ifb)) {
     event_code = (ifb->ifb_active_lag == ((void*)0))
  ? KEV_DL_LINK_OFF
  : KEV_DL_LINK_ON;
     ifb->ifb_last_link_event = event_code;
 }
    }
    else {

 if (media_active(&p->po_media_info)) {
     if (ifb->ifb_distributing_count == 0) {
  ifb->ifb_last_link_event = event_code = KEV_DL_LINK_ON;
     }
     bondport_enable_distributing(p);
 }
 else {
     bondport_disable_distributing(p);
 }
    }

    ifbond_signal(ifb, "bond_add_interface");
    bond_unlock();
    if (event_code != 0) {
 interface_link_event(ifp, event_code);
    }
    if (old_array != ((void*)0)) {
 FREE(old_array, M_BOND);
    }
    return 0;

 failed:
    bond_assert_lock_not_held();


    if (first) {
 ifnet_set_lladdr_and_type(ifp, ((void*)0), 0, IFT_IEEE8023ADLAG);
    }

    if (new_array != ((void*)0)) {
 FREE(new_array, M_BOND);
    }
    if ((progress & BOND_ADD_PROGRESS_LLADDR_SET) != 0) {
 int error1;

 error1 = if_siflladdr(port_ifp, &p->po_saved_addr);
 if (error1 != 0) {
     printf("bond_add_interface(%s, %s): if_siflladdr failed %d\n",
     ifb->ifb_name, bondport_get_name(p), error1);
 }
    }
    if ((progress & BOND_ADD_PROGRESS_PROTO_ATTACHED) != 0) {
 (void)bond_detach_protocol(port_ifp);
    }
    if ((progress & BOND_ADD_PROGRESS_MTU_SET) != 0) {
 int error1;

 error1 = siocsifmtu(port_ifp, p->po_devmtu.ifdm_current);
 if (error1 != 0) {
     printf("bond_add_interface(%s, %s): SIOCSIFMTU %d failed %d\n",
     ifb->ifb_name, bondport_get_name(p),
     p->po_devmtu.ifdm_current, error1);
 }
    }
    bond_lock();
    if ((progress & BOND_ADD_PROGRESS_IN_LIST) != 0) {
 TAILQ_REMOVE(&ifb->ifb_port_list, p, po_port_list);
 ifb->ifb_port_count--;
    }
    ifnet_set_eflags(ifp, 0, IFEF_BOND);
    if (TAILQ_EMPTY(&ifb->ifb_port_list)) {
 ifb->ifb_altmtu = 0;
 ifnet_set_mtu(ifp, 0);
 ifnet_set_offload(ifp, 0);
    }

 signal_done:
    ifbond_signal(ifb, "bond_add_interface");
    bond_unlock();
    ifbond_release(ifb);
    bondport_free(p);
    return (error);
}
