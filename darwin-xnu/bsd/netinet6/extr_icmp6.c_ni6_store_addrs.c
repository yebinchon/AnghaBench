
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int u_int32_t ;
typedef int u_char ;
struct TYPE_8__ {int sin6_addr; } ;
struct in6_addrlifetime_i {scalar_t__ ia6ti_expire; } ;
struct in6_ifaddr {int ia6_flags; TYPE_4__ ia_addr; struct in6_addrlifetime_i ia6_lifetime; } ;
struct in6_addr {scalar_t__* s6_addr16; } ;
struct TYPE_5__ {struct ifaddr* tqh_first; } ;
struct ifnet {TYPE_1__ if_addrlist; } ;
struct TYPE_6__ {struct ifaddr* tqe_next; } ;
struct ifaddr {TYPE_3__* ifa_addr; TYPE_2__ ifa_list; } ;
struct icmp6_nodeinfo {int ni_flags; } ;
struct TYPE_7__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET6 ;
 int ICMP6_NODEINFO_TMPADDROK ;
 int IFA_LOCK (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int IN6_IFF_ANYCAST ;
 int IN6_IFF_DEPRECATED ;
 int IN6_IFF_TEMPORARY ;
 scalar_t__ IN6_IS_ADDR_LINKLOCAL (int *) ;



 int ND6_INFINITE_LIFETIME ;
 int NI_NODEADDR_FLAG_ALL ;
 int NI_NODEADDR_FLAG_ANYCAST ;
 int NI_NODEADDR_FLAG_GLOBAL ;
 int NI_NODEADDR_FLAG_LINKLOCAL ;
 int NI_NODEADDR_FLAG_SITELOCAL ;
 int NI_NODEADDR_FLAG_TRUNCATE ;
 struct ifnet* TAILQ_FIRST (int *) ;
 struct ifnet* TAILQ_NEXT (struct ifnet*,int ) ;
 int bcopy (int *,int *,int) ;
 int htonl (scalar_t__) ;
 int icmp6_nodeinfo ;
 int if_list ;
 int ifnet_head ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;
 int in6_addrscope (int *) ;
 scalar_t__ net_uptime () ;

__attribute__((used)) static int
ni6_store_addrs(struct icmp6_nodeinfo *ni6, struct icmp6_nodeinfo *nni6,
  struct ifnet *ifp0, int resid)
{
 struct ifnet *ifp = ifp0;
 struct in6_ifaddr *ifa6;
 struct ifaddr *ifa;
 struct ifnet *ifp_dep = ((void*)0);
 int copied = 0, allow_deprecated = 0;
 u_char *cp = (u_char *)(nni6 + 1);
 int niflags = ni6->ni_flags;
 u_int32_t ltime;
 uint64_t now = net_uptime();

 if (ifp0 == ((void*)0) && !(niflags & NI_NODEADDR_FLAG_ALL))
  return (0);

  again:

 ifnet_head_lock_shared();
 if (ifp == ((void*)0))
  ifp = TAILQ_FIRST(&ifnet_head);

 for (; ifp; ifp = TAILQ_NEXT(ifp, if_list)) {
  ifnet_lock_shared(ifp);
  for (ifa = ifp->if_addrlist.tqh_first; ifa;
       ifa = ifa->ifa_list.tqe_next) {
   struct in6_addrlifetime_i *lt;

   IFA_LOCK(ifa);
   if (ifa->ifa_addr->sa_family != AF_INET6) {
    IFA_UNLOCK(ifa);
    continue;
   }
   ifa6 = (struct in6_ifaddr *)ifa;

   if ((ifa6->ia6_flags & IN6_IFF_DEPRECATED) != 0 &&
       allow_deprecated == 0) {






    if (ifp_dep == ((void*)0))
     ifp_dep = ifp;

    IFA_UNLOCK(ifa);
    continue;
   } else if ((ifa6->ia6_flags & IN6_IFF_DEPRECATED) == 0 &&
       allow_deprecated != 0) {
    IFA_UNLOCK(ifa);
    continue;
   }

   switch (in6_addrscope(&ifa6->ia_addr.sin6_addr)) {
   case 129:
    if ((niflags & NI_NODEADDR_FLAG_LINKLOCAL) == 0) {
     IFA_UNLOCK(ifa);
     continue;
    }
    break;
   case 128:
    if ((niflags & NI_NODEADDR_FLAG_SITELOCAL) == 0) {
     IFA_UNLOCK(ifa);
     continue;
    }
    break;
   case 130:
    if ((niflags & NI_NODEADDR_FLAG_GLOBAL) == 0) {
     IFA_UNLOCK(ifa);
     continue;
    }
    break;
   default:
    IFA_UNLOCK(ifa);
    continue;
   }





   if ((ifa6->ia6_flags & IN6_IFF_ANYCAST) != 0 &&
       (niflags & NI_NODEADDR_FLAG_ANYCAST) == 0) {
    IFA_UNLOCK(ifa);
    continue;
   }
   if ((ifa6->ia6_flags & IN6_IFF_TEMPORARY) != 0 &&
       (icmp6_nodeinfo & ICMP6_NODEINFO_TMPADDROK) == 0) {
    IFA_UNLOCK(ifa);
    continue;
   }


   if (resid < sizeof(struct in6_addr) +
       sizeof(u_int32_t)) {
    IFA_UNLOCK(ifa);




    nni6->ni_flags |=
     NI_NODEADDR_FLAG_TRUNCATE;
    ifnet_lock_done(ifp);
    ifnet_head_done();
    return(copied);
   }
   lt = &ifa6->ia6_lifetime;
   if (lt->ia6ti_expire == 0) {
    ltime = ND6_INFINITE_LIFETIME;
   } else {
    if (lt->ia6ti_expire > now)
     ltime = htonl(lt->ia6ti_expire - now);
    else
     ltime = 0;
   }

   bcopy(&ltime, cp, sizeof(u_int32_t));
   cp += sizeof(u_int32_t);


   bcopy(&ifa6->ia_addr.sin6_addr, cp,
         sizeof(struct in6_addr));

   if (IN6_IS_ADDR_LINKLOCAL(&ifa6->ia_addr.sin6_addr))
    ((struct in6_addr *)(void *)cp)->s6_addr16[1] = 0;
   cp += sizeof(struct in6_addr);

   resid -= (sizeof(struct in6_addr) + sizeof(u_int32_t));
   copied += (sizeof(struct in6_addr) +
       sizeof(u_int32_t));
   IFA_UNLOCK(ifa);
  }
  ifnet_lock_done(ifp);
  if (ifp0)
   break;
 }
 ifnet_head_done();

 if (allow_deprecated == 0 && ifp_dep != ((void*)0)) {
  ifp = ifp_dep;
  allow_deprecated = 1;

  goto again;
 }

 return(copied);
}
