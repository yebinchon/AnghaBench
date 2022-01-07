
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mHandle; int mAlreadyLocked; } ;
typedef TYPE_1__ mtx_t ;


 int FALSE ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ pthread_mutex_unlock (TYPE_1__*) ;
 int thrd_error ;
 int thrd_success ;

int mtx_unlock(mtx_t *mtx)
{





  return pthread_mutex_unlock(mtx) == 0 ? thrd_success : thrd_error;;

}
