
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Started; int Halting; int * ClientSession; TYPE_1__* Cedar; } ;
struct TYPE_6__ {int CurrentActiveLinks; } ;
typedef TYPE_2__ LINK ;


 int Dec (int ) ;
 int LockLink (TYPE_2__*) ;
 int ReleaseSession (int *) ;
 int StopSession (int *) ;
 int UnlockLink (TYPE_2__*) ;

void StopLink(LINK *k)
{

 if (k == ((void*)0))
 {
  return;
 }

 LockLink(k);
 {
  if (k->Started == 0)
  {
   UnlockLink(k);
   return;
  }
  k->Started = 0;
  k->Halting = 1;

  Dec(k->Cedar->CurrentActiveLinks);
 }
 UnlockLink(k);

 if (k->ClientSession != ((void*)0))
 {

  StopSession(k->ClientSession);

  LockLink(k);
  {
   ReleaseSession(k->ClientSession);
   k->ClientSession = ((void*)0);
  }
  UnlockLink(k);
 }

 LockLink(k);
 {
  k->Halting = 0;
 }
 UnlockLink(k);
}
