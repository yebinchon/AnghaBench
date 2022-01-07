
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
union sockaddr_in_4_6 {struct sockaddr_in sin; } ;
typedef int u_int16_t ;
struct in_addr {int s_addr; } ;


 int AF_INET ;

__attribute__((used)) static void
fill_ip_sockaddr_4_6(union sockaddr_in_4_6 *sin46,
 struct in_addr ip, u_int16_t port)
{
 struct sockaddr_in *sin = &sin46->sin;

 sin->sin_family = AF_INET;
 sin->sin_len = sizeof(*sin);
 sin->sin_port = port;
 sin->sin_addr.s_addr = ip.s_addr;
}
