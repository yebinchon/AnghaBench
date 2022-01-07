
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int PACK ;


 int PackGetInt64Ex (int *,char*,int ) ;

UINT64 PackGetInt64(PACK *p, char *name)
{
 return PackGetInt64Ex(p, name, 0);
}
