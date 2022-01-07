
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int PackGetIntEx (int *,char*,int ) ;

UINT PackGetInt(PACK *p, char *name)
{
 return PackGetIntEx(p, name, 0);
}
