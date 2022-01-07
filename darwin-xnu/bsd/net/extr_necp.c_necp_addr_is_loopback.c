
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int FALSE ;
 int IN6_IS_ADDR_LOOPBACK (int *) ;
 scalar_t__ INADDR_LOOPBACK ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static bool
necp_addr_is_loopback(struct sockaddr *address)
{
 if (address == ((void*)0)) {
  return (FALSE);
 }

 if (address->sa_family == AF_INET) {
  return (ntohl(((struct sockaddr_in *)(void *)address)->sin_addr.s_addr) == INADDR_LOOPBACK);
 } else if (address->sa_family == AF_INET6) {
  return IN6_IS_ADDR_LOOPBACK(&((struct sockaddr_in6 *)(void *)address)->sin6_addr);
 }

 return (FALSE);
}
