
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IPV6_ADDR ;
typedef int IP ;
typedef int FOLDER ;


 int CfgGetIp (int *,char*,int *) ;
 int IPToIPv6Addr (int *,int *) ;
 int IsIP6 (int *) ;
 int Zero (int *,int) ;

bool CfgGetIp6Addr(FOLDER *f, char *name, IPV6_ADDR *addr)
{
 IP ip;

 Zero(addr, sizeof(IPV6_ADDR));
 if (f == ((void*)0) || name == ((void*)0) || addr == ((void*)0))
 {
  return 0;
 }

 if (CfgGetIp(f, name, &ip) == 0)
 {
  return 0;
 }

 if (IsIP6(&ip) == 0)
 {
  return 0;
 }

 if (IPToIPv6Addr(addr, &ip) == 0)
 {
  return 0;
 }

 return 1;
}
