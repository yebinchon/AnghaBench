
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_rwlock_t ;
struct TYPE_4__ {scalar_t__ nMagic; scalar_t__ nExclusiveAccessCount; scalar_t__ nCompletedSharedAccessCount; int mtxExclusiveAccess; int mtxSharedAccessCompleted; int cndSharedAccessCompleted; } ;


 int EINVAL ;
 scalar_t__ PTE_RWLOCK_MAGIC ;
 TYPE_1__* PTHREAD_RWLOCK_INITIALIZER ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int pthread_rwlock_unlock (pthread_rwlock_t * rwlock)
{
   int result, result1;
   pthread_rwlock_t rwl;

   if (rwlock == ((void*)0) || *rwlock == ((void*)0))
      return (EINVAL);

   if (*rwlock == PTHREAD_RWLOCK_INITIALIZER)
   {



      return 0;
   }

   rwl = *rwlock;

   if (rwl->nMagic != PTE_RWLOCK_MAGIC)
   {
      return EINVAL;
   }

   if (rwl->nExclusiveAccessCount == 0)
   {
      if ((result =
               pthread_mutex_lock (&(rwl->mtxSharedAccessCompleted))) != 0)
      {
         return result;
      }

      if (++rwl->nCompletedSharedAccessCount == 0)
      {
         result = pthread_cond_signal (&(rwl->cndSharedAccessCompleted));
      }

      result1 = pthread_mutex_unlock (&(rwl->mtxSharedAccessCompleted));
   }
   else
   {
      rwl->nExclusiveAccessCount--;

      result = pthread_mutex_unlock (&(rwl->mtxSharedAccessCompleted));
      result1 = pthread_mutex_unlock (&(rwl->mtxExclusiveAccess));

   }

   return ((result != 0) ? result : result1);
}
