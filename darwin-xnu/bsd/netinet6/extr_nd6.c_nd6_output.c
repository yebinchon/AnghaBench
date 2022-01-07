
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct rtentry {int dummy; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct flowadv {int dummy; } ;


 int nd6_output_list (struct ifnet*,struct ifnet*,struct mbuf*,struct sockaddr_in6*,struct rtentry*,struct flowadv*) ;

int
nd6_output(struct ifnet *ifp, struct ifnet *origifp, struct mbuf *m0,
    struct sockaddr_in6 *dst, struct rtentry *hint0, struct flowadv *adv)
{
 return nd6_output_list(ifp, origifp, m0, dst, hint0, adv);
}
