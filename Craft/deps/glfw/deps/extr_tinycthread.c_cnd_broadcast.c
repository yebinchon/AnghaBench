
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mWaitersCount; int * mEvents; int mWaitersCountLock; } ;
typedef TYPE_1__ cnd_t ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ SetEvent (int ) ;
 size_t _CONDITION_EVENT_ALL ;
 scalar_t__ pthread_cond_signal (TYPE_1__*) ;
 int thrd_error ;
 int thrd_success ;

int cnd_broadcast(cnd_t *cond)
{
  return pthread_cond_signal(cond) == 0 ? thrd_success : thrd_error;

}
