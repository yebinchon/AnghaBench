
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;
typedef int IPV6_ADDR ;


 int PackGetDataEx2 (int *,char*,int *,int,int ) ;
 int Zero (int *,int) ;

bool PackGetIp6AddrEx(PACK *p, char *name, IPV6_ADDR *addr, UINT index)
{

 if (p == ((void*)0) || name == ((void*)0) || addr == ((void*)0))
 {
  Zero(addr, sizeof(IPV6_ADDR));
  return 0;
 }

 return PackGetDataEx2(p, name, addr, sizeof(IPV6_ADDR), index);
}
