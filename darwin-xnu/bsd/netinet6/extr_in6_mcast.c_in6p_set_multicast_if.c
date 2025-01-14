
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct sockopt {int sopt_valsize; } ;
struct ip6_moptions {struct ifnet* im6o_multicast_ifp; } ;
struct inpcb {int dummy; } ;
struct ifnet {int if_flags; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENOMEM ;
 int IFF_MULTICAST ;
 int IM6O_LOCK (struct ip6_moptions*) ;
 int IM6O_REMREF (struct ip6_moptions*) ;
 int IM6O_UNLOCK (struct ip6_moptions*) ;
 scalar_t__ if_index ;
 struct ifnet** ifindex2ifnet ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;
 struct ip6_moptions* in6p_findmoptions (struct inpcb*) ;
 int sooptcopyin (struct sockopt*,size_t*,int,int) ;

__attribute__((used)) static int
in6p_set_multicast_if(struct inpcb *inp, struct sockopt *sopt)
{
 struct ifnet *ifp;
 struct ip6_moptions *imo;
 u_int ifindex;
 int error;

 if (sopt->sopt_valsize != sizeof(u_int))
  return (EINVAL);

 error = sooptcopyin(sopt, &ifindex, sizeof(u_int), sizeof(u_int));
 if (error)
  return (error);

 ifnet_head_lock_shared();
 if ((u_int)if_index < ifindex) {
  ifnet_head_done();
  return (EINVAL);
 }

 ifp = ifindex2ifnet[ifindex];
 ifnet_head_done();
 if (ifp == ((void*)0) || (ifp->if_flags & IFF_MULTICAST) == 0)
  return (EADDRNOTAVAIL);

 imo = in6p_findmoptions(inp);
 if (imo == ((void*)0))
  return (ENOMEM);

 IM6O_LOCK(imo);
 imo->im6o_multicast_ifp = ifp;
 IM6O_UNLOCK(imo);
 IM6O_REMREF(imo);

 return (0);
}
