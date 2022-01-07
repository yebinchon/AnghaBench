
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int PackGetDataSizeEx (int *,char*,int ) ;

UINT PackGetDataSize(PACK *p, char *name)
{
 return PackGetDataSizeEx(p, name, 0);
}
