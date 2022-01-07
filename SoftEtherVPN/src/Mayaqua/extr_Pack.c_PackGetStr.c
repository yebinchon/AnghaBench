
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PACK ;


 int PackGetStrEx (int *,char*,char*,int ,int ) ;

bool PackGetStr(PACK *p, char *name, char *str, UINT size)
{
 return PackGetStrEx(p, name, str, size, 0);
}
