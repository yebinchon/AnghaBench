
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IPV6_ADDR ;
typedef int IP ;


 int IPToIPv6Addr (int *,int *) ;
 int StrToMask6 (int *,char*) ;

bool StrToMask6Addr(IPV6_ADDR *mask, char *str)
{
 IP ip;

 if (StrToMask6(&ip, str) == 0)
 {
  return 0;
 }

 if (IPToIPv6Addr(mask, &ip) == 0)
 {
  return 0;
 }

 return 1;
}
