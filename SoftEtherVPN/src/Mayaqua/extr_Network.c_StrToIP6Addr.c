
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IPV6_ADDR ;
typedef int IP ;


 int IPToIPv6Addr (int *,int *) ;
 int StrToIP6 (int *,char*) ;
 int Zero (int *,int) ;

bool StrToIP6Addr(IPV6_ADDR *ip, char *str)
{
 IP ip2;

 if (ip == ((void*)0) || str == ((void*)0))
 {
  Zero(ip, sizeof(IPV6_ADDR));
  return 0;
 }

 if (StrToIP6(&ip2, str) == 0)
 {
  return 0;
 }

 if (IPToIPv6Addr(ip, &ip2) == 0)
 {
  return 0;
 }

 return 1;
}
