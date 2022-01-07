
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
struct stf_softc {int sc_if; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_len; struct in_addr sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct rtentry {struct ifnet* rt_ifp; } ;
struct TYPE_9__ {TYPE_1__* ifa_ifp; } ;
struct TYPE_7__ {scalar_t__ s_addr; } ;
struct TYPE_8__ {TYPE_2__ sin_addr; } ;
struct in_ifaddr {TYPE_4__ ia_ifa; TYPE_3__ ia_broadaddr; } ;
struct ifnet {int dummy; } ;
typedef int sin ;
struct TYPE_6__ {int if_flags; } ;


 int AF_INET ;
 int IFA_LOCK (TYPE_4__*) ;
 int IFA_UNLOCK (TYPE_4__*) ;
 int IFF_BROADCAST ;
 int IFF_LINK2 ;
 scalar_t__ IN_MULTICAST (int) ;
 int LOG_WARNING ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 struct in_ifaddr* TAILQ_FIRST (int *) ;
 struct in_ifaddr* TAILQ_NEXT (struct in_ifaddr*,int ) ;
 int bzero (struct sockaddr_in*,int) ;
 int ia_link ;
 int if_name (int ) ;
 int ifnet_flags (int ) ;
 int in_ifaddr_rwlock ;
 int in_ifaddrhead ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_shared (int ) ;
 int log (int ,char*,int ,int ) ;
 int ntohl (scalar_t__) ;
 struct rtentry* rtalloc1 (struct sockaddr*,int ,int ) ;
 int rtfree (struct rtentry*) ;

__attribute__((used)) static int
stf_checkaddr4(
 struct stf_softc *sc,
 const struct in_addr *in,
 struct ifnet *inifp)
{
 struct in_ifaddr *ia4;





 if (IN_MULTICAST(ntohl(in->s_addr)))
  return -1;
 switch ((ntohl(in->s_addr) & 0xff000000) >> 24) {
 case 0: case 127: case 255:
  return -1;
 }




 lck_rw_lock_shared(in_ifaddr_rwlock);
 for (ia4 = TAILQ_FIRST(&in_ifaddrhead);
      ia4;
      ia4 = TAILQ_NEXT(ia4, ia_link))
 {
  IFA_LOCK(&ia4->ia_ifa);
  if ((ia4->ia_ifa.ifa_ifp->if_flags & IFF_BROADCAST) == 0) {
   IFA_UNLOCK(&ia4->ia_ifa);
   continue;
  }
  if (in->s_addr == ia4->ia_broadaddr.sin_addr.s_addr) {
   IFA_UNLOCK(&ia4->ia_ifa);
   lck_rw_done(in_ifaddr_rwlock);
   return -1;
  }
  IFA_UNLOCK(&ia4->ia_ifa);
 }
 lck_rw_done(in_ifaddr_rwlock);




 if (sc && (ifnet_flags(sc->sc_if) & IFF_LINK2) == 0 && inifp) {
  struct sockaddr_in sin;
  struct rtentry *rt;

  bzero(&sin, sizeof(sin));
  sin.sin_family = AF_INET;
  sin.sin_len = sizeof(struct sockaddr_in);
  sin.sin_addr = *in;
  rt = rtalloc1((struct sockaddr *)&sin, 0, 0);
  if (rt != ((void*)0))
   RT_LOCK(rt);
  if (rt == ((void*)0) || rt->rt_ifp != inifp) {

   log(LOG_WARNING, "%s: packet from 0x%x dropped "
       "due to ingress filter\n", if_name(sc->sc_if),
       (u_int32_t)ntohl(sin.sin_addr.s_addr));

   if (rt != ((void*)0)) {
    RT_UNLOCK(rt);
    rtfree(rt);
   }
   return -1;
  }
  RT_UNLOCK(rt);
  rtfree(rt);
 }

 return 0;
}
