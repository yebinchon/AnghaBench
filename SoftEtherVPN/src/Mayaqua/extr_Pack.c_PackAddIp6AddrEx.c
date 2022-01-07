
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;
typedef int IPV6_ADDR ;
typedef int ELEMENT ;


 int * PackAddDataEx (int *,char*,int *,int,int ,int ) ;

ELEMENT *PackAddIp6AddrEx(PACK *p, char *name, IPV6_ADDR *addr, UINT index, UINT total)
{

 if (p == ((void*)0) || name == ((void*)0) || addr == ((void*)0))
 {
  return ((void*)0);
 }

 return PackAddDataEx(p, name, addr, sizeof(IPV6_ADDR), index, total);
}
