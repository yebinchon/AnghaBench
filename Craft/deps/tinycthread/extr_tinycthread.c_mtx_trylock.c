
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mHandle; scalar_t__ mAlreadyLocked; int mRecursive; } ;
typedef TYPE_1__ mtx_t ;


 int LeaveCriticalSection (int *) ;
 scalar_t__ TryEnterCriticalSection (int *) ;
 scalar_t__ pthread_mutex_trylock (TYPE_1__*) ;
 int thrd_busy ;
 int thrd_success ;

int mtx_trylock(mtx_t *mtx)
{
  return (pthread_mutex_trylock(mtx) == 0) ? thrd_success : thrd_busy;

}
