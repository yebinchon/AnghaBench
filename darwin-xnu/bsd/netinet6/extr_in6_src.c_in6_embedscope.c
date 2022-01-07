
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct in6_addr {void** s6_addr16; } ;
struct sockaddr_in6 {size_t sin6_scope_id; struct in6_addr sin6_addr; } ;
struct ip6_pktopts {struct in6_pktinfo* ip6po_pktinfo; } ;
struct in6pcb {TYPE_1__* in6p_moptions; struct ip6_pktopts* in6p_outputopts; } ;
struct in6_pktinfo {size_t ipi6_ifindex; } ;
struct ifnet {size_t if_index; } ;
struct TYPE_3__ {struct ifnet* im6o_multicast_ifp; } ;


 int ENXIO ;
 int IM6O_LOCK (TYPE_1__*) ;
 int IM6O_UNLOCK (TYPE_1__*) ;
 scalar_t__ IN6_IS_ADDR_MC_INTFACELOCAL (struct in6_addr*) ;
 scalar_t__ IN6_IS_ADDR_MULTICAST (struct in6_addr*) ;
 scalar_t__ IN6_IS_SCOPE_LINKLOCAL (struct in6_addr*) ;
 void* htons (size_t) ;
 size_t if_index ;
 struct ifnet** ifindex2ifnet ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;
 int ifnet_reference (struct ifnet*) ;
 size_t scope6_addr2default (struct in6_addr*) ;

int
in6_embedscope(struct in6_addr *in6, const struct sockaddr_in6 *sin6,
    struct in6pcb *in6p, struct ifnet **ifpp, struct ip6_pktopts *opt)
{
 struct ifnet *ifp = ((void*)0);
 u_int32_t scopeid;
 struct ip6_pktopts *optp = ((void*)0);

 *in6 = sin6->sin6_addr;
 scopeid = sin6->sin6_scope_id;
 if (ifpp != ((void*)0))
  *ifpp = ((void*)0);
 if (IN6_IS_SCOPE_LINKLOCAL(in6) || IN6_IS_ADDR_MC_INTFACELOCAL(in6)) {
  struct in6_pktinfo *pi;
  struct ifnet *im6o_multicast_ifp = ((void*)0);

  if (in6p != ((void*)0) && IN6_IS_ADDR_MULTICAST(in6) &&
      in6p->in6p_moptions != ((void*)0)) {
   IM6O_LOCK(in6p->in6p_moptions);
   im6o_multicast_ifp =
       in6p->in6p_moptions->im6o_multicast_ifp;
   IM6O_UNLOCK(in6p->in6p_moptions);
  }

  if (opt != ((void*)0))
   optp = opt;
  else if (in6p != ((void*)0))
   optp = in6p->in6p_outputopts;



  if (in6p != ((void*)0) && optp != ((void*)0) &&
      (pi = optp->ip6po_pktinfo) != ((void*)0) &&
      pi->ipi6_ifindex != 0) {

   if (ifpp != ((void*)0)) {
    ifnet_head_lock_shared();
    ifp = ifindex2ifnet[pi->ipi6_ifindex];
    ifnet_head_done();
   }
   in6->s6_addr16[1] = htons(pi->ipi6_ifindex);
  } else if (in6p != ((void*)0) && IN6_IS_ADDR_MULTICAST(in6) &&
      in6p->in6p_moptions != ((void*)0) && im6o_multicast_ifp != ((void*)0)) {
   ifp = im6o_multicast_ifp;
   in6->s6_addr16[1] = htons(ifp->if_index);
  } else if (scopeid != 0) {





   if (if_index < scopeid)
    return (ENXIO);


   if (ifpp != ((void*)0)) {
    ifnet_head_lock_shared();
    ifp = ifindex2ifnet[scopeid];
    ifnet_head_done();
   }

   in6->s6_addr16[1] = htons(scopeid & 0xffff);
  }

  if (ifpp != ((void*)0)) {
   if (ifp != ((void*)0))
    ifnet_reference(ifp);
   *ifpp = ifp;
  }
 }

 return (0);
}
