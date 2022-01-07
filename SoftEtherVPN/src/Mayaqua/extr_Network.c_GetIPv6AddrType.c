
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IPV6_ADDR ;
typedef int IP ;


 int GetIPAddrType6 (int *) ;
 int IPv6AddrToIP (int *,int *) ;

UINT GetIPv6AddrType(IPV6_ADDR *addr)
{
 IP ip;

 if (addr == ((void*)0))
 {
  return 0;
 }

 IPv6AddrToIP(&ip, addr);

 return GetIPAddrType6(&ip);
}
