
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 scalar_t__ PackGetIntEx (int *,char*,int ) ;

bool PackGetBoolEx(PACK *p, char *name, UINT index)
{
 return PackGetIntEx(p, name, index) == 0 ? 0 : 1;
}
