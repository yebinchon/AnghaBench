
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int user_addr_t ;
union ifdrvu {TYPE_2__* ifdrvu_64; TYPE_1__* ifdrvu_32; void* ifdrvu_p; } ;
typedef int uint32_t ;
typedef int u_long ;
struct TYPE_16__ {int sa_len; int sa_data; } ;
struct ifdevmtu {int ifdm_min; int ifdm_max; int ifdm_current; } ;
struct ifreq {TYPE_3__ ifr_addr; int ifr_mtu; struct ifdevmtu ifr_devmtu; } ;
struct ifmediareq64 {int ifmu_ulist; } ;
struct ifmediareq32 {int ifmu_ulist; } ;
struct ifmediareq {unsigned int ifm_count; int ifm_status; int ifm_mask; void* ifm_current; void* ifm_active; } ;
typedef TYPE_4__* ifnet_t ;
typedef TYPE_5__* if_fake_ref ;
typedef int boolean_t ;
struct TYPE_18__ {unsigned int iff_media_count; int iff_media_list; int * iff_peer; } ;
struct TYPE_17__ {int if_flags; } ;
struct TYPE_15__ {int ifd_data; int ifd_len; int ifd_cmd; } ;
struct TYPE_14__ {int ifd_data; int ifd_len; int ifd_cmd; } ;


 int CAST_USER_ADDR_T (int ) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int FALSE ;
 int IFF_RUNNING ;
 int IFF_UP ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 void* IFM_ETHER ;
 int IF_MINMTU ;
 int TRUE ;
 int USER_ADDR_NULL ;
 int copyout (int *,int ,unsigned int) ;
 int current_proc () ;
 int feth_get_drvspec (TYPE_4__*,int ,int ,int ) ;
 int feth_lock () ;
 int feth_max_mtu () ;
 int feth_set_drvspec (TYPE_4__*,int ,int ,int ) ;
 int feth_unlock () ;
 int ifnet_mtu (TYPE_4__*) ;
 int ifnet_set_flags (TYPE_4__*,int,int) ;
 int ifnet_set_lladdr (TYPE_4__*,int ,int ) ;
 int ifnet_set_mtu (TYPE_4__*,int ) ;
 int ifnet_softc (TYPE_4__*) ;
 int proc_suser (int ) ;

__attribute__((used)) static int
feth_ioctl(ifnet_t ifp, u_long cmd, void * data)
{
 unsigned int count;
 struct ifdevmtu * devmtu_p;
 union ifdrvu drv;
 uint32_t drv_cmd;
 uint32_t drv_len;
 boolean_t drv_set_command = FALSE;
 int error = 0;
 struct ifmediareq * ifmr;
 struct ifreq * ifr;
 if_fake_ref fakeif;
 int status;
 user_addr_t user_addr;

 ifr = (struct ifreq *)data;
 switch (cmd) {
 case 131:
  ifnet_set_flags(ifp, IFF_UP, IFF_UP);
  break;

 case 135:
 case 134:
  feth_lock();
  fakeif = (if_fake_ref)ifnet_softc(ifp);
  if (fakeif == ((void*)0)) {
   feth_unlock();
   return (EOPNOTSUPP);
  }
  status = (fakeif->iff_peer != ((void*)0))
      ? (IFM_AVALID | IFM_ACTIVE) : IFM_AVALID;
  ifmr = (struct ifmediareq *)data;
  user_addr = (cmd == 134) ?
   ((struct ifmediareq64 *)ifmr)->ifmu_ulist :
   CAST_USER_ADDR_T(((struct ifmediareq32 *)ifmr)->ifmu_ulist);
  count = ifmr->ifm_count;
  ifmr->ifm_active = IFM_ETHER;
  ifmr->ifm_current = IFM_ETHER;
  ifmr->ifm_mask = 0;
  ifmr->ifm_status = status;
  if (user_addr == USER_ADDR_NULL) {
   ifmr->ifm_count = fakeif->iff_media_count;
  }
  else if (count > 0) {
   if (count > fakeif->iff_media_count) {
    count = fakeif->iff_media_count;
   }
   ifmr->ifm_count = count;
   error = copyout(&fakeif->iff_media_list, user_addr,
     count * sizeof(int));
  }
  feth_unlock();
  break;

 case 136:
  devmtu_p = &ifr->ifr_devmtu;
  devmtu_p->ifdm_current = ifnet_mtu(ifp);
  devmtu_p->ifdm_max = feth_max_mtu();
  devmtu_p->ifdm_min = IF_MINMTU;
  break;

 case 128:
  if (ifr->ifr_mtu > feth_max_mtu() || ifr->ifr_mtu < IF_MINMTU) {
   error = EINVAL;
  } else {
   error = ifnet_set_mtu(ifp, ifr->ifr_mtu);
  }
  break;

 case 133:
 case 132:
  error = proc_suser(current_proc());
  if (error != 0) {
   break;
  }
  drv_set_command = TRUE;

 case 138:
 case 137:
  drv.ifdrvu_p = data;
  if (cmd == 138 || cmd == 133) {
   drv_cmd = drv.ifdrvu_32->ifd_cmd;
   drv_len = drv.ifdrvu_32->ifd_len;
   user_addr = CAST_USER_ADDR_T(drv.ifdrvu_32->ifd_data);

  } else {
   drv_cmd = drv.ifdrvu_64->ifd_cmd;
   drv_len = drv.ifdrvu_64->ifd_len;
   user_addr = drv.ifdrvu_64->ifd_data;
  }
  if (drv_set_command) {
   error = feth_set_drvspec(ifp, drv_cmd, drv_len,
       user_addr);
  } else {
   error = feth_get_drvspec(ifp, drv_cmd, drv_len,
       user_addr);
  }
  break;

 case 129:
  error = ifnet_set_lladdr(ifp, ifr->ifr_addr.sa_data,
      ifr->ifr_addr.sa_len);
  break;

 case 130:
  if ((ifp->if_flags & IFF_UP) != 0) {

   if ((ifp->if_flags & IFF_RUNNING) == 0) {

    error = ifnet_set_flags(ifp, IFF_RUNNING,
        IFF_RUNNING);
   }
  } else if ((ifp->if_flags & IFF_RUNNING) != 0) {

   error = ifnet_set_flags(ifp, 0, IFF_RUNNING);
  }
  break;

 case 140:
 case 139:
  error = 0;
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }
 return error;
}
