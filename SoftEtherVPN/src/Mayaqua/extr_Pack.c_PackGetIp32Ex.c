
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;
typedef int IP ;


 int IPToUINT (int *) ;
 int PackGetIpEx (int *,char*,int *,int ) ;

UINT PackGetIp32Ex(PACK *p, char *name, UINT index)
{
 IP ip;

 if (p == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 if (PackGetIpEx(p, name, &ip, index) == 0)
 {
  return 0;
 }

 return IPToUINT(&ip);
}
