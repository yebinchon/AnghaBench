
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ slock_t ;


 int EnterCriticalSection (int *) ;
 int pthread_mutex_lock (int *) ;

void slock_lock(slock_t *lock)
{
   if (!lock)
      return;



   pthread_mutex_lock(&lock->lock);

}
