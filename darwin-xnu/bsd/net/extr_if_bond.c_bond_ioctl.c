
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int u_long ;
struct TYPE_16__ {int ifdm_max; int ifdm_min; int ifdm_current; } ;
struct ifreq {int ifr_data; int ifr_data64; int ifr_mtu; TYPE_4__ ifr_devmtu; } ;
struct ifnet {int dummy; } ;
struct ifmediareq64 {int ifmu_ulist; } ;
struct ifmediareq32 {int ifmu_ulist; } ;
struct ifmediareq {int ifm_count; void* ifm_current; int ifm_status; void* ifm_active; int ifm_mask; } ;
struct ifaddr {int dummy; } ;
struct TYPE_17__ {int ibru_int_val; int ibru_if_name; } ;
struct if_bond_req {int ibr_op; TYPE_5__ ibr_ibru; } ;
typedef TYPE_6__* ifbond_ref ;
typedef int ibr ;
struct TYPE_19__ {int verbose; } ;
struct TYPE_18__ {int ifb_mode; int ifb_altmtu; TYPE_3__** ifb_distributing_array; int ifb_distributing_count; TYPE_1__* ifb_active_lag; } ;
struct TYPE_14__ {void* mi_active; } ;
struct TYPE_15__ {TYPE_2__ po_media_info; } ;
struct TYPE_13__ {void* lag_active_media; } ;


 int CAST_USER_ADDR_T (int ) ;
 int EBUSY ;
 int EINVAL ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int EPROTONOSUPPORT ;
 int IFF_UP ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 void* IFM_ETHER ;
 scalar_t__ IFT_ETHER ;
 scalar_t__ IFT_IEEE8023ADLAG ;
 int USER_ADDR_NULL ;
 int bond_add_interface (struct ifnet*,struct ifnet*) ;
 int bond_device_mtu (struct ifnet*,TYPE_6__*) ;
 int bond_get_mtu_values (TYPE_6__*,int *,int *) ;
 int bond_get_status (TYPE_6__*,struct if_bond_req*,int ) ;
 int bond_lock () ;
 int bond_remove_interface (TYPE_6__*,struct ifnet*) ;
 int bond_set_mode (struct ifnet*,int ) ;
 int bond_set_mtu (struct ifnet*,int ,int) ;
 int bond_set_promisc (struct ifnet*) ;
 int bond_setmulti (struct ifnet*) ;
 int bond_unlock () ;
 int copyin (int ,struct if_bond_req*,int) ;
 int copyout (void**,int ,int) ;
 int current_proc () ;
 TYPE_8__* g_bond ;
 int ifbond_flags_if_detaching (TYPE_6__*) ;
 int ifnet_set_flags (struct ifnet*,int ,int ) ;
 int ifnet_softc (struct ifnet*) ;
 scalar_t__ ifnet_type (struct ifnet*) ;
 struct ifnet* ifunit (int ) ;
 int proc_is64bit (int ) ;

__attribute__((used)) static int
bond_ioctl(struct ifnet *ifp, u_long cmd, void * data)
{
    int error = 0;
    struct if_bond_req ibr;
    struct ifaddr * ifa;
    ifbond_ref ifb;
    struct ifreq * ifr;
    struct ifmediareq *ifmr;
    struct ifnet * port_ifp = ((void*)0);
    user_addr_t user_addr;

    if (ifnet_type(ifp) != IFT_IEEE8023ADLAG) {
 return (EOPNOTSUPP);
    }
    ifr = (struct ifreq *)data;
    ifa = (struct ifaddr *)data;

    switch (cmd) {
    case 134:
 ifnet_set_flags(ifp, IFF_UP, IFF_UP);
 break;

    case 136:
    case 135:
 bond_lock();
 ifb = (ifbond_ref)ifnet_softc(ifp);
 if (ifb == ((void*)0) || ifbond_flags_if_detaching(ifb)) {
     bond_unlock();
     return (ifb == ((void*)0) ? EOPNOTSUPP : EBUSY);
 }
 ifmr = (struct ifmediareq *)data;
 ifmr->ifm_current = IFM_ETHER;
 ifmr->ifm_mask = 0;
 ifmr->ifm_status = IFM_AVALID;
 ifmr->ifm_active = IFM_ETHER;
 ifmr->ifm_count = 1;
 if (ifb->ifb_mode == 148) {
     if (ifb->ifb_active_lag != ((void*)0)) {
  ifmr->ifm_active = ifb->ifb_active_lag->lag_active_media;
  ifmr->ifm_status |= IFM_ACTIVE;
     }
 }
 else if (ifb->ifb_distributing_count > 0) {
     ifmr->ifm_active
  = ifb->ifb_distributing_array[0]->po_media_info.mi_active;
     ifmr->ifm_status |= IFM_ACTIVE;
 }
 bond_unlock();
 user_addr = (cmd == 135) ?
     ((struct ifmediareq64 *)ifmr)->ifmu_ulist :
     CAST_USER_ADDR_T(((struct ifmediareq32 *)ifmr)->ifmu_ulist);
 if (user_addr != USER_ADDR_NULL) {
     error = copyout(&ifmr->ifm_current,
       user_addr,
       sizeof(int));
 }
 break;

    case 129:

 error = EINVAL;
 break;

    case 137:
 bond_lock();
 ifb = (ifbond_ref)ifnet_softc(ifp);
 if (ifb == ((void*)0) || ifbond_flags_if_detaching(ifb)) {
     bond_unlock();
     error = (ifb == ((void*)0)) ? EOPNOTSUPP : EBUSY;
     break;
 }
 ifr->ifr_devmtu.ifdm_current = bond_device_mtu(ifp, ifb);
 bond_get_mtu_values(ifb, &ifr->ifr_devmtu.ifdm_min,
       &ifr->ifr_devmtu.ifdm_max);
 bond_unlock();
 break;

    case 139:
 bond_lock();
 ifb = (ifbond_ref)ifnet_softc(ifp);
 if (ifb == ((void*)0) || ifbond_flags_if_detaching(ifb)) {
     bond_unlock();
     error = (ifb == ((void*)0)) ? EOPNOTSUPP : EBUSY;
     break;
 }
 ifr->ifr_mtu = ifb->ifb_altmtu;
 bond_unlock();
 break;

    case 133:
 error = bond_set_mtu(ifp, ifr->ifr_mtu, 1);
 break;

    case 128:
 error = bond_set_mtu(ifp, ifr->ifr_mtu, 0);
 break;

    case 132:
 user_addr = proc_is64bit(current_proc())
     ? ifr->ifr_data64 : CAST_USER_ADDR_T(ifr->ifr_data);
 error = copyin(user_addr, &ibr, sizeof(ibr));
 if (error) {
     break;
 }
 switch (ibr.ibr_op) {
 case 146:
 case 144:
     port_ifp = ifunit(ibr.ibr_ibru.ibru_if_name);
     if (port_ifp == ((void*)0)) {
  error = ENXIO;
  break;
     }
     if (ifnet_type(port_ifp) != IFT_ETHER) {
  error = EPROTONOSUPPORT;
  break;
     }
     break;
 case 142:
 case 143:
     break;
 default:
     error = EOPNOTSUPP;
     break;
 }
 if (error != 0) {
     break;
 }
 switch (ibr.ibr_op) {
 case 146:
     error = bond_add_interface(ifp, port_ifp);
     break;
 case 144:
     bond_lock();
     ifb = (ifbond_ref)ifnet_softc(ifp);
     if (ifb == ((void*)0) || ifbond_flags_if_detaching(ifb)) {
  bond_unlock();
  return (ifb == ((void*)0) ? EOPNOTSUPP : EBUSY);
     }
     error = bond_remove_interface(ifb, port_ifp);
     bond_unlock();
     break;
 case 142:
     bond_lock();
     if (g_bond == ((void*)0)) {
  bond_unlock();
  error = ENXIO;
  break;
     }
     g_bond->verbose = ibr.ibr_ibru.ibru_int_val;
     bond_unlock();
     break;
 case 143:
     switch (ibr.ibr_ibru.ibru_int_val) {
     case 148:
     case 147:
  break;
     default:
  error = EINVAL;
  break;
     }
     if (error != 0) {
  break;
     }
     error = bond_set_mode(ifp, ibr.ibr_ibru.ibru_int_val);
     break;
 }
 break;

    case 138:
 user_addr = proc_is64bit(current_proc())
     ? ifr->ifr_data64 : CAST_USER_ADDR_T(ifr->ifr_data);
 error = copyin(user_addr, &ibr, sizeof(ibr));
 if (error) {
     break;
 }
 switch (ibr.ibr_op) {
 case 145:
     break;
 default:
     error = EOPNOTSUPP;
     break;
 }
 if (error != 0) {
     break;
 }
 bond_lock();
 ifb = (ifbond_ref)ifnet_softc(ifp);
 if (ifb == ((void*)0) || ifbond_flags_if_detaching(ifb)) {
     bond_unlock();
     return (ifb == ((void*)0) ? EOPNOTSUPP : EBUSY);
 }
 switch (ibr.ibr_op) {
 case 145:
     error = bond_get_status(ifb, &ibr, user_addr);
     break;
 }
 bond_unlock();
 break;

    case 130:
 error = EOPNOTSUPP;
 break;

    case 131:

 bond_lock();
 error = bond_set_promisc(ifp);
 bond_unlock();
 break;

    case 141:
    case 140:
 error = bond_setmulti(ifp);
 break;
    default:
 error = EOPNOTSUPP;
    }
    return error;
}
