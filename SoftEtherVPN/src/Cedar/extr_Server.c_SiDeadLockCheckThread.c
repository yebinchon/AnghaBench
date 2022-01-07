
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ HaltDeadLockThread; int DeadLockWaitEvent; } ;
typedef int THREAD ;
typedef TYPE_1__ SERVER ;


 int SERVER_DEADLOCK_CHECK_SPAN ;
 int SERVER_DEADLOCK_CHECK_TIMEOUT ;
 int SiCheckDeadLockMain (TYPE_1__*,int ) ;
 int Wait (int ,int ) ;

void SiDeadLockCheckThread(THREAD *t, void *param)
{
 SERVER *s = (SERVER *)param;

 if (s == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 while (1)
 {
  Wait(s->DeadLockWaitEvent, SERVER_DEADLOCK_CHECK_SPAN);

  if (s->HaltDeadLockThread)
  {
   break;
  }

  SiCheckDeadLockMain(s, SERVER_DEADLOCK_CHECK_TIMEOUT);
 }
}
