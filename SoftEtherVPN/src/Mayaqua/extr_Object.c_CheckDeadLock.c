
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int msg ;
typedef int c ;
typedef int UINT ;
struct TYPE_4__ {int Unlocked; int Timeout; int * Lock; } ;
typedef int THREAD ;
typedef int LOCK ;
typedef TYPE_1__ DEADCHECK ;


 int AbortExitEx (char*) ;
 int CheckDeadLockThread ;
 int Format (char*,int,char*,char*) ;
 int INFINITE ;
 int MAX_PATH ;
 int * NewThread (int ,TYPE_1__*) ;
 int ReleaseThread (int *) ;
 int WaitThread (int *,int ) ;
 int WaitThreadInit (int *) ;
 int Zero (TYPE_1__*,int) ;

void CheckDeadLock(LOCK *lock, UINT timeout, char *name)
{
 DEADCHECK c;
 THREAD *t;
 char msg[MAX_PATH];

 if (lock == ((void*)0))
 {
  return;
 }
 if (name == ((void*)0))
 {
  name = "Unknown";
 }

 Format(msg, sizeof(msg), "error: CheckDeadLock() Failed: %s\n", name);

 Zero(&c, sizeof(c));
 c.Lock = lock;
 c.Timeout = timeout;
 c.Unlocked = 0;

 t = NewThread(CheckDeadLockThread, &c);
 WaitThreadInit(t);
 if (WaitThread(t, timeout) == 0)
 {
  if (c.Unlocked == 0)
  {

   AbortExitEx(msg);
  }
  else
  {
   WaitThread(t, INFINITE);
  }
 }

 ReleaseThread(t);
}
