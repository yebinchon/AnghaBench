
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ mtx_t ;


 int EnterCriticalSection (int *) ;
 int OSSpinLockLock (int *) ;
 int pthread_mutex_lock (int *) ;

void
mtx_lock(mtx_t *mtx)
{






 pthread_mutex_lock(&mtx->lock);

}
