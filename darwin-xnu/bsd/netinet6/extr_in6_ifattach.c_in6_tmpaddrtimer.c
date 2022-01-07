
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct nd_ifinfo {scalar_t__ initialized; int lock; int randomid; int randomseed1; int randomseed0; } ;
struct TYPE_3__ {struct ifnet* tqe_next; } ;
struct ifnet {TYPE_1__ if_link; } ;
typedef int nullbuf ;
typedef int caddr_t ;
struct TYPE_4__ {struct ifnet* tqh_first; } ;


 scalar_t__ FALSE ;
 struct nd_ifinfo* ND_IFINFO (struct ifnet*) ;
 scalar_t__ bcmp (int ,int *,int) ;
 int bzero (int *,int) ;
 int hz ;
 TYPE_2__ ifnet_head ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;
 int in6_generate_tmp_iid (int ,int ,int ) ;
 int ip6_desync_factor ;
 int ip6_temp_preferred_lifetime ;
 int ip6_temp_regen_advance ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int timeout (void (*) (void*),int ,int) ;

void
in6_tmpaddrtimer(void *arg)
{
#pragma unused(arg)
 struct ifnet *ifp = ((void*)0);
 struct nd_ifinfo *ndi = ((void*)0);
 u_int8_t nullbuf[8];

 timeout(in6_tmpaddrtimer, (caddr_t)0, (ip6_temp_preferred_lifetime -
     ip6_desync_factor - ip6_temp_regen_advance) * hz);

 bzero(nullbuf, sizeof (nullbuf));
 ifnet_head_lock_shared();
 for (ifp = ifnet_head.tqh_first; ifp;
     ifp = ifp->if_link.tqe_next) {
  ndi = ND_IFINFO(ifp);
  if ((((void*)0) == ndi) || (FALSE == ndi->initialized)) {
   continue;
  }
  lck_mtx_lock(&ndi->lock);
  if (bcmp(ndi->randomid, nullbuf, sizeof (nullbuf)) != 0) {




   (void) in6_generate_tmp_iid(ndi->randomseed0,
       ndi->randomseed1, ndi->randomid);
  }
  lck_mtx_unlock(&ndi->lock);
 }
 ifnet_head_done();
}
