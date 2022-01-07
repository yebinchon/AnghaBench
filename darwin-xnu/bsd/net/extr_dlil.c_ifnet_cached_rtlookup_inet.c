
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; int sin_len; struct in_addr sin_addr; } ;
struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;
struct route {struct rtentry* ro_rt; int ro_dst; } ;
struct ifnet {int if_index; } ;


 scalar_t__ AF_INET ;
 int ROUTE_RELEASE (struct route*) ;
 scalar_t__ ROUTE_UNUSABLE (struct route*) ;
 int RT_ADDREF (struct rtentry*) ;
 int VERIFY (int ) ;
 int bzero (int *,int) ;
 int ifp_src_route_copyin (struct ifnet*,struct route*) ;
 int ifp_src_route_copyout (struct ifnet*,struct route*) ;
 struct rtentry* rtalloc1_scoped (struct sockaddr*,int ,int ,int ) ;

struct rtentry *
ifnet_cached_rtlookup_inet(struct ifnet *ifp, struct in_addr src_ip)
{
 struct route src_rt;
 struct sockaddr_in *dst;

 dst = (struct sockaddr_in *)(void *)(&src_rt.ro_dst);

 ifp_src_route_copyout(ifp, &src_rt);

 if (ROUTE_UNUSABLE(&src_rt) || src_ip.s_addr != dst->sin_addr.s_addr) {
  ROUTE_RELEASE(&src_rt);
  if (dst->sin_family != AF_INET) {
   bzero(&src_rt.ro_dst, sizeof (src_rt.ro_dst));
   dst->sin_len = sizeof (src_rt.ro_dst);
   dst->sin_family = AF_INET;
  }
  dst->sin_addr = src_ip;

  VERIFY(src_rt.ro_rt == ((void*)0));
  src_rt.ro_rt = rtalloc1_scoped((struct sockaddr *)dst,
      0, 0, ifp->if_index);

  if (src_rt.ro_rt != ((void*)0)) {

   struct rtentry *rte = src_rt.ro_rt;
   RT_ADDREF(rte);
   ifp_src_route_copyin(ifp, &src_rt);
   src_rt.ro_rt = rte;
  }
 }

 return (src_rt.ro_rt);
}
