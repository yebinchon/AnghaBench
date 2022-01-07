
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Halt; int Lock; int HaltEvent; int Thread; } ;
typedef TYPE_1__ QUERYIPTHREAD ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int INFINITE ;
 int ReleaseEvent (int ) ;
 int ReleaseThread (int ) ;
 int Set (int ) ;
 int WaitThread (int ,int ) ;

void FreeQueryIpThread(QUERYIPTHREAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 t->Halt = 1;
 Set(t->HaltEvent);

 WaitThread(t->Thread, INFINITE);
 ReleaseThread(t->Thread);

 ReleaseEvent(t->HaltEvent);

 DeleteLock(t->Lock);

 Free(t);
}
