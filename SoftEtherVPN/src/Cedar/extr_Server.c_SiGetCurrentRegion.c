
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {char* CurrentRegion; int CurrentRegionLock; } ;
typedef TYPE_1__ CEDAR ;


 int ClearStr (char*,int ) ;
 scalar_t__ GetCurrentLangId () ;
 scalar_t__ IsEmptyStr (char*) ;
 int Lock (int ) ;
 scalar_t__ SE_LANG_CHINESE_ZH ;
 scalar_t__ SE_LANG_JAPANESE ;
 int StrCpy (char*,int ,char*) ;
 int Unlock (int ) ;

void SiGetCurrentRegion(CEDAR *c, char *region, UINT region_size)
{
 ClearStr(region, region_size);

 if (c == ((void*)0) || region == ((void*)0))
 {
  return;
 }

 Lock(c->CurrentRegionLock);
 {
  StrCpy(region, region_size, c->CurrentRegion);
 }
 Unlock(c->CurrentRegionLock);

 if (IsEmptyStr(region))
 {
  if (GetCurrentLangId() == SE_LANG_JAPANESE)
  {
   StrCpy(region, region_size, "JP");
  }
  else if (GetCurrentLangId() == SE_LANG_CHINESE_ZH)
  {
   StrCpy(region, region_size, "CN");
  }
 }
}
