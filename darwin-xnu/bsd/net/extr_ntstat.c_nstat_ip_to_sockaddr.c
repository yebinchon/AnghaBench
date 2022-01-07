
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct in_addr {int dummy; } ;
struct sockaddr_in {int sin_len; struct in_addr sin_addr; int sin_port; int sin_family; } ;


 int AF_INET ;

__attribute__((used)) static void
nstat_ip_to_sockaddr(
 const struct in_addr *ip,
 u_int16_t port,
 struct sockaddr_in *sin,
 u_int32_t maxlen)
{
 if (maxlen < sizeof(struct sockaddr_in))
  return;

 sin->sin_family = AF_INET;
 sin->sin_len = sizeof(*sin);
 sin->sin_port = port;
 sin->sin_addr = *ip;
}
