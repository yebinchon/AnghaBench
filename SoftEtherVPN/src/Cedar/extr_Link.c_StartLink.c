
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int CurrentActiveLinks; } ;
struct TYPE_10__ {int Started; int Auth; int Option; TYPE_5__* Cedar; int ClientSession; scalar_t__ Halting; } ;
struct TYPE_9__ {void* Param; } ;
typedef TYPE_1__ PACKET_ADAPTER ;
typedef TYPE_2__ LINK ;


 int Inc (int ) ;
 TYPE_1__* LinkGetPacketAdapter () ;
 int LockLink (TYPE_2__*) ;
 int NewClientSession (TYPE_5__*,int ,int ,TYPE_1__*,int *) ;
 int UnlockLink (TYPE_2__*) ;

void StartLink(LINK *k)
{
 PACKET_ADAPTER *pa;

 if (k == ((void*)0))
 {
  return;
 }

 LockLink(k);
 {
  if (k->Started || k->Halting)
  {
   UnlockLink(k);
   return;
  }
  k->Started = 1;

  Inc(k->Cedar->CurrentActiveLinks);
 }
 UnlockLink(k);


 pa = LinkGetPacketAdapter();
 pa->Param = (void *)k;
 LockLink(k);
 {
  k->ClientSession = NewClientSession(k->Cedar, k->Option, k->Auth, pa, ((void*)0));
 }
 UnlockLink(k);
}
