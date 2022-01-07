
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int SendStateChanged; int Lock; TYPE_1__* HaltTube; int RecvQueue; } ;
struct TYPE_9__ {int Ref; } ;
typedef TYPE_1__ TUBE ;
typedef int PKT ;
typedef TYPE_2__ NATIVE_NAT ;


 int AddRef (int ) ;
 int FreePacketWithData (int *) ;
 int * GetNext (int ) ;
 int Lock (int ) ;
 int LockQueue (int ) ;
 int NnDeleteOldSessions (TYPE_2__*) ;
 int NnLayer2 (TYPE_2__*,int *) ;
 int NnPollingIpCombine (TYPE_2__*) ;
 int ReleaseTube (TYPE_1__*) ;
 int TubeFlushEx (TYPE_1__*,int) ;
 int Unlock (int ) ;
 int UnlockQueue (int ) ;

void NnPoll(NATIVE_NAT *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 LockQueue(t->RecvQueue);
 {
  while (1)
  {
   PKT *pkt = GetNext(t->RecvQueue);

   if (pkt == ((void*)0))
   {
    break;
   }

   NnLayer2(t, pkt);

   FreePacketWithData(pkt);
  }
 }
 UnlockQueue(t->RecvQueue);

 if (t->SendStateChanged)
 {
  TUBE *halt_tube = ((void*)0);

  Lock(t->Lock);
  {
   if (t->HaltTube != ((void*)0))
   {
    halt_tube = t->HaltTube;

    AddRef(halt_tube->Ref);
   }
  }
  Unlock(t->Lock);

  if (halt_tube != ((void*)0))
  {
   TubeFlushEx(halt_tube, 1);

   t->SendStateChanged = 0;

   ReleaseTube(halt_tube);
  }
 }

 NnPollingIpCombine(t);

 NnDeleteOldSessions(t);
}
