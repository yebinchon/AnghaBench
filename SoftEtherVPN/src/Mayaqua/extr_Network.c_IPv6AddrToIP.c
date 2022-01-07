
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Value; } ;
typedef TYPE_1__ IPV6_ADDR ;
typedef int IP ;


 int SetIP6 (int *,int ) ;

void IPv6AddrToIP(IP *ip, IPV6_ADDR *addr)
{

 if (ip == ((void*)0) || addr == ((void*)0))
 {
  return;
 }

 SetIP6(ip, addr->Value);
}
