
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Server; int CurrentRegionLock; int CurrentRegion; } ;
typedef TYPE_1__ CEDAR ;


 int FlushServerCaps (int ) ;
 int IsEmptyStr (char*) ;
 int Lock (int ) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int StrCpy (int ,int,char*) ;
 int Unlock (int ) ;

void SiUpdateCurrentRegion(CEDAR *c, char *region, bool force_update)
{
 bool changed = 0;

 if (c == ((void*)0))
 {
  return;
 }

 if (IsEmptyStr(region) == 0)
 {
  Lock(c->CurrentRegionLock);
  {
   if (StrCmpi(c->CurrentRegion, region) != 0)
   {
    StrCpy(c->CurrentRegion, sizeof(c->CurrentRegion), region);
    changed = 1;
   }
  }
  Unlock(c->CurrentRegionLock);
 }

 if (force_update)
 {
  changed = 1;
 }

 if (changed)
 {
  FlushServerCaps(c->Server);
 }
}
