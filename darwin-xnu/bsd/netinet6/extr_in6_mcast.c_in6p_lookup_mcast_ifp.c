
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {scalar_t__ sin6_family; int sin6_addr; } ;
struct route_in6 {TYPE_2__* ro_rt; int ro_dst; } ;
struct route {int dummy; } ;
struct inpcb {int inp_vflag; int inp_flags; TYPE_1__* inp_boundifp; } ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {struct ifnet* rt_ifp; } ;
struct TYPE_3__ {unsigned int if_index; } ;


 scalar_t__ AF_INET6 ;
 unsigned int IFSCOPE_NONE ;
 scalar_t__ IN6_IS_ADDR_MULTICAST (int *) ;
 int INP_BOUND_IF ;
 int INP_IPV6 ;
 int ROUTE_RELEASE (struct route_in6*) ;
 int VERIFY (int) ;
 int memcpy (int *,struct sockaddr_in6 const*,int) ;
 int memset (struct route_in6*,int ,int) ;
 int rtalloc_scoped_ign (struct route*,int ,unsigned int) ;

__attribute__((used)) static struct ifnet *
in6p_lookup_mcast_ifp(const struct inpcb *in6p,
    const struct sockaddr_in6 *gsin6)
{
 struct route_in6 ro6;
 struct ifnet *ifp;
 unsigned int ifscope = IFSCOPE_NONE;

 VERIFY(in6p == ((void*)0) || (in6p->inp_vflag & INP_IPV6));
 VERIFY(gsin6->sin6_family == AF_INET6);
 if (IN6_IS_ADDR_MULTICAST(&gsin6->sin6_addr) == 0)
  return ((void*)0);

 if (in6p != ((void*)0) && (in6p->inp_flags & INP_BOUND_IF))
  ifscope = in6p->inp_boundifp->if_index;

 ifp = ((void*)0);
 memset(&ro6, 0, sizeof(struct route_in6));
 memcpy(&ro6.ro_dst, gsin6, sizeof(struct sockaddr_in6));
 rtalloc_scoped_ign((struct route *)&ro6, 0, ifscope);
 if (ro6.ro_rt != ((void*)0)) {
  ifp = ro6.ro_rt->rt_ifp;
  VERIFY(ifp != ((void*)0));
 }
 ROUTE_RELEASE(&ro6);

 return (ifp);
}
