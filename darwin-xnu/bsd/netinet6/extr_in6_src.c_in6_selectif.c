
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct rtentry {int rt_flags; TYPE_1__* rt_ifa; } ;
struct route_in6 {struct rtentry* ro_rt; } ;
struct ip6_pktopts {int dummy; } ;
struct ip6_out_args {int dummy; } ;
struct ip6_moptions {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int sro ;
struct TYPE_2__ {struct ifnet* ifa_ifp; } ;


 int EHOSTUNREACH ;
 int ENETUNREACH ;
 int ROUTE_RELEASE (struct route_in6*) ;
 int RTF_BLACKHOLE ;
 int RTF_HOST ;
 int RTF_REJECT ;
 int VERIFY (int) ;
 int bzero (struct route_in6*,int) ;
 int ifnet_reference (struct ifnet*) ;
 int ifnet_release (struct ifnet*) ;
 int selectroute (int *,struct sockaddr_in6*,struct ip6_pktopts*,struct ip6_moptions*,int *,struct route_in6*,struct ifnet**,struct rtentry**,int ,int,struct ip6_out_args*) ;

int
in6_selectif(struct sockaddr_in6 *dstsock, struct ip6_pktopts *opts,
    struct ip6_moptions *mopts, struct route_in6 *ro,
    struct ip6_out_args *ip6oa, struct ifnet **retifp)
{
 int err = 0;
 struct route_in6 sro;
 struct rtentry *rt = ((void*)0);

 if (ro == ((void*)0)) {
  bzero(&sro, sizeof (sro));
  ro = &sro;
 }

 if ((err = selectroute(((void*)0), dstsock, opts, mopts, ((void*)0), ro, retifp,
     &rt, 0, 1, ip6oa)) != 0)
  goto done;
 if (rt && (rt->rt_flags & (RTF_REJECT | RTF_BLACKHOLE))) {
  err = ((rt->rt_flags & RTF_HOST) ? EHOSTUNREACH : ENETUNREACH);
  goto done;
 }
 if (rt != ((void*)0) && rt->rt_ifa != ((void*)0) && rt->rt_ifa->ifa_ifp != ((void*)0) &&
     retifp != ((void*)0)) {
  ifnet_reference(rt->rt_ifa->ifa_ifp);
  if (*retifp != ((void*)0))
   ifnet_release(*retifp);
  *retifp = rt->rt_ifa->ifa_ifp;
 }

done:
 if (ro == &sro) {
  VERIFY(rt == ((void*)0) || rt == ro->ro_rt);
  ROUTE_RELEASE(ro);
 }





 return (err);
}
