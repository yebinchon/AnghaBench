
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct rtentry {int dummy; } ;
struct route_in6 {int dummy; } ;
struct ip6_pktopts {int dummy; } ;
struct ip6_out_args {int dummy; } ;
struct ip6_moptions {int dummy; } ;
struct in6_ifaddr {int dummy; } ;
struct ifnet {int dummy; } ;


 int selectroute (struct sockaddr_in6*,struct sockaddr_in6*,struct ip6_pktopts*,struct ip6_moptions*,struct in6_ifaddr**,struct route_in6*,struct ifnet**,struct rtentry**,int,int ,struct ip6_out_args*) ;

int
in6_selectroute(struct sockaddr_in6 *srcsock, struct sockaddr_in6 *dstsock,
    struct ip6_pktopts *opts, struct ip6_moptions *mopts,
    struct in6_ifaddr **retsrcia, struct route_in6 *ro, struct ifnet **retifp,
    struct rtentry **retrt, int clone, struct ip6_out_args *ip6oa)
{

 return (selectroute(srcsock, dstsock, opts, mopts, retsrcia, ro, retifp,
     retrt, clone, 0, ip6oa));
}
