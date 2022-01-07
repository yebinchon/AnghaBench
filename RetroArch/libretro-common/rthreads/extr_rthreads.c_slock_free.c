
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ slock_t ;


 int DeleteCriticalSection (int *) ;
 int free (TYPE_1__*) ;
 int pthread_mutex_destroy (int *) ;

void slock_free(slock_t *lock)
{
   if (!lock)
      return;




   pthread_mutex_destroy(&lock->lock);

   free(lock);
}
