
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {scalar_t__ sin6_scope_id; } ;
struct rtentry {int rt_flags; scalar_t__ rt_gateway; } ;


 int RTF_GATEWAY ;
 int VERIFY (int) ;

void
rtgw_to_sa6(struct rtentry *rt, struct sockaddr_in6 *sin6)
{
 VERIFY(rt->rt_flags & RTF_GATEWAY);

 *sin6 = *((struct sockaddr_in6 *)(void *)rt->rt_gateway);
 sin6->sin6_scope_id = 0;
}
