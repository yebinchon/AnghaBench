
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mWaitersCountLock; int ** mEvents; } ;
typedef TYPE_1__ cnd_t ;


 int CloseHandle (int *) ;
 int DeleteCriticalSection (int *) ;
 size_t _CONDITION_EVENT_ALL ;
 size_t _CONDITION_EVENT_ONE ;
 int pthread_cond_destroy (TYPE_1__*) ;

void cnd_destroy(cnd_t *cond)
{
  pthread_cond_destroy(cond);

}
