
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int32_t ;
struct nd_ifinfo {scalar_t__ initialized; scalar_t__ maxmtu; scalar_t__ linkmtu; int lock; } ;
struct ifnet {scalar_t__ if_mtu; } ;


 scalar_t__ FALSE ;
 scalar_t__ IPV6_MMTU ;
 int LOG_NOTICE ;
 struct nd_ifinfo* ND_IFINFO (struct ifnet*) ;
 int if_name (struct ifnet*) ;
 scalar_t__ in6_maxmtu ;
 int in6_setmaxmtu () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int log (int ,char*,int ,int ) ;

void
nd6_setmtu(struct ifnet *ifp)
{
 struct nd_ifinfo *ndi = ND_IFINFO(ifp);
 u_int32_t oldmaxmtu, maxmtu;

 if ((((void*)0) == ndi) || (FALSE == ndi->initialized)) {
  return;
 }

 lck_mtx_lock(&ndi->lock);
 oldmaxmtu = ndi->maxmtu;
 maxmtu = ndi->maxmtu = ifp->if_mtu;







 if (oldmaxmtu >= IPV6_MMTU && ndi->maxmtu < IPV6_MMTU) {
  log(LOG_NOTICE, "nd6_setmtu: "
      "new link MTU on %s (%u) is too small for IPv6\n",
      if_name(ifp), (uint32_t)ndi->maxmtu);
 }
 ndi->linkmtu = ifp->if_mtu;
 lck_mtx_unlock(&ndi->lock);


 if (maxmtu > in6_maxmtu) {
  in6_setmaxmtu();
 }
}
