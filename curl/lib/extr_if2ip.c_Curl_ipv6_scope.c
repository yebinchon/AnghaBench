
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* s6_addr; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET6 ;
 unsigned int IPV6_SCOPE_GLOBAL ;
 unsigned int IPV6_SCOPE_LINKLOCAL ;
 unsigned int IPV6_SCOPE_NODELOCAL ;
 unsigned int IPV6_SCOPE_SITELOCAL ;
 unsigned int IPV6_SCOPE_UNIQUELOCAL ;

unsigned int Curl_ipv6_scope(const struct sockaddr *sa)
{

  (void) sa;
  return IPV6_SCOPE_GLOBAL;
}
