
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ slock_t ;


 int TryEnterCriticalSection (int *) ;
 scalar_t__ pthread_mutex_trylock (int *) ;

bool slock_try_lock(slock_t *lock)
{
   if (!lock)
      return 0;



   return pthread_mutex_trylock(&lock->lock)==0;

}
