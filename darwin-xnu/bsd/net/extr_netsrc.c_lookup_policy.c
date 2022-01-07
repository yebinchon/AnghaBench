
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {TYPE_1__ sin_addr; } ;
struct TYPE_8__ {int * s6_addr32; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; int sin6_len; TYPE_4__ sin6_addr; } ;
struct TYPE_7__ {scalar_t__ sa_family; } ;
union sockaddr_in_4_6 {TYPE_2__ sin; struct sockaddr_in6 sin6; TYPE_3__ sa; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct in6_addrpolicy {int dummy; } ;
typedef int mapped ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 TYPE_4__ IN6ADDR_V4MAPPED_INIT ;
 struct in6_addrpolicy* in6_addrsel_lookup_policy (struct sockaddr_in6*) ;

__attribute__((used)) static struct in6_addrpolicy *
lookup_policy(struct sockaddr* sa)
{


 union sockaddr_in_4_6 *addr = (union sockaddr_in_4_6 *)(void*)sa;
 if (addr->sa.sa_family == AF_INET6) {
  return in6_addrsel_lookup_policy(&addr->sin6);
 } else if (sa->sa_family == AF_INET) {
  struct sockaddr_in6 mapped = {
   .sin6_family = AF_INET6,
   .sin6_len = sizeof(mapped),
   .sin6_addr = IN6ADDR_V4MAPPED_INIT,
  };
  mapped.sin6_addr.s6_addr32[3] = addr->sin.sin_addr.s_addr;
  return in6_addrsel_lookup_policy(&mapped);
 }
 return ((void*)0);
}
