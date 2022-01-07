
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* TubePairData; } ;
struct TYPE_4__ {int IsDisconnected; int Lock; int SockEvent2; int SockEvent1; int Event2; int Event1; } ;
typedef TYPE_2__ TUBE ;


 int Lock (int ) ;
 int Set (int ) ;
 int SetSockEvent (int ) ;
 int Unlock (int ) ;

void TubeDisconnect(TUBE *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 if (t->TubePairData == ((void*)0))
 {
  return;
 }

 Lock(t->TubePairData->Lock);
 {
  t->TubePairData->IsDisconnected = 1;

  Set(t->TubePairData->Event1);
  Set(t->TubePairData->Event2);
  SetSockEvent(t->TubePairData->SockEvent1);
  SetSockEvent(t->TubePairData->SockEvent2);
 }
 Unlock(t->TubePairData->Lock);
}
