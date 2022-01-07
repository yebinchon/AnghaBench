
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route_in6 {int dummy; } ;
struct mbuf {int dummy; } ;
struct ip6_pktopts {int dummy; } ;
struct ip6_out_args {int dummy; } ;
struct ip6_moptions {int dummy; } ;
struct ifnet {int dummy; } ;


 int ip6_output_list (struct mbuf*,int ,struct ip6_pktopts*,struct route_in6*,int,struct ip6_moptions*,struct ifnet**,struct ip6_out_args*) ;

int
ip6_output(struct mbuf *m0, struct ip6_pktopts *opt,
    struct route_in6 *ro, int flags, struct ip6_moptions *im6o,
    struct ifnet **ifpp, struct ip6_out_args *ip6oa)
{
 return ip6_output_list(m0, 0, opt, ro, flags, im6o, ifpp, ip6oa);
}
