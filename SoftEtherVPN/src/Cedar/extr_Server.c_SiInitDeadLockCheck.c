
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int HaltDeadLockThread; int DeadLockCheckThread; int DeadLockWaitEvent; scalar_t__ DisableDeadLockCheck; } ;
typedef TYPE_1__ SERVER ;


 int NewEvent () ;
 int NewThread (int ,TYPE_1__*) ;
 int SiDeadLockCheckThread ;

void SiInitDeadLockCheck(SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }
 if (s->DisableDeadLockCheck)
 {
  return;
 }

 s->HaltDeadLockThread = 0;
 s->DeadLockWaitEvent = NewEvent();
 s->DeadLockCheckThread = NewThread(SiDeadLockCheckThread, s);
}
