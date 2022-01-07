
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** mEvents; int mWaitersCountLock; scalar_t__ mWaitersCount; } ;
typedef TYPE_1__ cnd_t ;


 int CloseHandle (int *) ;
 void* CreateEvent (int *,int ,int ,int *) ;
 int FALSE ;
 int InitializeCriticalSection (int *) ;
 int TRUE ;
 size_t _CONDITION_EVENT_ALL ;
 size_t _CONDITION_EVENT_ONE ;
 scalar_t__ pthread_cond_init (TYPE_1__*,int *) ;
 int thrd_error ;
 int thrd_success ;

int cnd_init(cnd_t *cond)
{
  return pthread_cond_init(cond, ((void*)0)) == 0 ? thrd_success : thrd_error;

}
