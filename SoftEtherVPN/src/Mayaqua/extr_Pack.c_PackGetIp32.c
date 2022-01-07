
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int PackGetIp32Ex (int *,char*,int ) ;

UINT PackGetIp32(PACK *p, char *name)
{
 return PackGetIp32Ex(p, name, 0);
}
