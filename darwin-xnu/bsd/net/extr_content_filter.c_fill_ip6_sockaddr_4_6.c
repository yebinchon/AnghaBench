
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {scalar_t__* s6_addr16; } ;
struct sockaddr_in6 {int sin6_len; struct in6_addr sin6_addr; int sin6_scope_id; int sin6_port; int sin6_family; } ;
union sockaddr_in_4_6 {struct sockaddr_in6 sin6; } ;
typedef int u_int16_t ;


 int AF_INET6 ;
 scalar_t__ IN6_IS_SCOPE_EMBED (struct in6_addr*) ;
 int ntohs (scalar_t__) ;

__attribute__((used)) static void
fill_ip6_sockaddr_4_6(union sockaddr_in_4_6 *sin46,
 struct in6_addr *ip6, u_int16_t port)
{
 struct sockaddr_in6 *sin6 = &sin46->sin6;

 sin6->sin6_family = AF_INET6;
 sin6->sin6_len = sizeof(*sin6);
 sin6->sin6_port = port;
 sin6->sin6_addr = *ip6;
 if (IN6_IS_SCOPE_EMBED(&sin6->sin6_addr)) {
  sin6->sin6_scope_id = ntohs(sin6->sin6_addr.s6_addr16[1]);
  sin6->sin6_addr.s6_addr16[1] = 0;
 }
}
