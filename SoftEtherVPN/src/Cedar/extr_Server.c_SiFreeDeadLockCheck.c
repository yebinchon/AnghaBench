
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HaltDeadLockThread; int * DeadLockWaitEvent; int * DeadLockCheckThread; } ;
typedef TYPE_1__ SERVER ;


 int INFINITE ;
 int ReleaseEvent (int *) ;
 int ReleaseThread (int *) ;
 int Set (int *) ;
 int WaitThread (int *,int ) ;

void SiFreeDeadLockCheck(SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 if (s->DeadLockCheckThread == ((void*)0))
 {
  return;
 }

 s->HaltDeadLockThread = 1;
 Set(s->DeadLockWaitEvent);

 WaitThread(s->DeadLockCheckThread, INFINITE);

 ReleaseThread(s->DeadLockCheckThread);
 s->DeadLockCheckThread = ((void*)0);

 ReleaseEvent(s->DeadLockWaitEvent);
 s->DeadLockWaitEvent = ((void*)0);

 s->HaltDeadLockThread = 0;
}
