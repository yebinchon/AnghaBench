
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Halt; int HaltEvent; int Cancel; int lock; int Thread; } ;
typedef TYPE_1__ KEEP ;


 int Cancel (int ) ;
 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int INFINITE ;
 int ReleaseCancel (int ) ;
 int ReleaseEvent (int ) ;
 int ReleaseThread (int ) ;
 int Set (int ) ;
 int WaitThread (int ,int ) ;

void StopKeep(KEEP *k)
{

 if (k == ((void*)0))
 {
  return;
 }

 k->Halt = 1;
 Set(k->HaltEvent);
 Cancel(k->Cancel);

 WaitThread(k->Thread, INFINITE);
 ReleaseThread(k->Thread);
 DeleteLock(k->lock);

 ReleaseCancel(k->Cancel);
 ReleaseEvent(k->HaltEvent);

 Free(k);
}
