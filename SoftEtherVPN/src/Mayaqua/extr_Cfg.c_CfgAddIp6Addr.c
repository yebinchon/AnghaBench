
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITEM ;
typedef int IPV6_ADDR ;
typedef int IP ;
typedef int FOLDER ;


 int * CfgAddIp (int *,char*,int *) ;
 int IPv6AddrToIP (int *,int *) ;

ITEM *CfgAddIp6Addr(FOLDER *f, char *name, IPV6_ADDR *addr)
{
 IP ip;

 if (f == ((void*)0) || name == ((void*)0) || addr == ((void*)0))
 {
  return ((void*)0);
 }

 IPv6AddrToIP(&ip, addr);

 return CfgAddIp(f, name, &ip);
}
