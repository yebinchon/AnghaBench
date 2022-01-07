
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {scalar_t__ sin6_scope_id; } ;
struct rtentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET6 ;
 int VERIFY (int) ;
 TYPE_1__* rt_key (struct rtentry*) ;

void
rtkey_to_sa6(struct rtentry *rt, struct sockaddr_in6 *sin6)
{
 VERIFY(rt_key(rt)->sa_family == AF_INET6);

 *sin6 = *((struct sockaddr_in6 *)(void *)rt_key(rt));
 sin6->sin6_scope_id = 0;
}
