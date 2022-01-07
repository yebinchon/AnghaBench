
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int IPV6_ADDR ;
typedef int ELEMENT ;


 int * PackAddIp6AddrEx (int *,char*,int *,int ,int) ;

ELEMENT *PackAddIp6Addr(PACK *p, char *name, IPV6_ADDR *addr)
{
 return PackAddIp6AddrEx(p, name, addr, 0, 1);
}
