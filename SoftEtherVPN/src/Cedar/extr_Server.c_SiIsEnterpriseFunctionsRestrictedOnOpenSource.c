
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int region ;
typedef int CEDAR ;


 int SiGetCurrentRegion (int *,char*,int) ;
 scalar_t__ StrCmpi (char*,char*) ;

bool SiIsEnterpriseFunctionsRestrictedOnOpenSource(CEDAR *c)
{
 char region[128];
 bool ret = 0;

 if (c == ((void*)0))
 {
  return 0;
 }


 SiGetCurrentRegion(c, region, sizeof(region));

 if (StrCmpi(region, "JP") == 0 || StrCmpi(region, "CN") == 0)
 {
  ret = 1;
 }

 return ret;
}
