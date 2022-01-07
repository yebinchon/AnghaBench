
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Lock; int SockEvent2; int SockEvent1; int Event2; int Event1; } ;
typedef TYPE_1__ TUBEPAIR_DATA ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int ReleaseEvent (int ) ;
 int ReleaseSockEvent (int ) ;

void CleanupTubePairData(TUBEPAIR_DATA *d)
{

 if (d == ((void*)0))
 {
  return;
 }

 ReleaseEvent(d->Event1);
 ReleaseEvent(d->Event2);

 ReleaseSockEvent(d->SockEvent1);
 ReleaseSockEvent(d->SockEvent2);

 DeleteLock(d->Lock);

 Free(d);
}
