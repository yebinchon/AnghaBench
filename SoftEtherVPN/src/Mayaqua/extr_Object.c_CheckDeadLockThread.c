
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Unlocked; int Lock; } ;
typedef int THREAD ;
typedef TYPE_1__ DEADCHECK ;


 int Lock (int ) ;
 int NoticeThreadInit (int *) ;
 int Unlock (int ) ;

void CheckDeadLockThread(THREAD *t, void *param)
{
 DEADCHECK *c = (DEADCHECK *)param;

 if (t == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 NoticeThreadInit(t);

 Lock(c->Lock);
 Unlock(c->Lock);
 c->Unlocked = 1;
}
