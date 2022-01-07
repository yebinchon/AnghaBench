
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pthread_rwlock_t ;
struct TYPE_5__ {scalar_t__ nMagic; scalar_t__ nExclusiveAccessCount; scalar_t__ nSharedAccessCount; scalar_t__ nCompletedSharedAccessCount; int mtxExclusiveAccess; int mtxSharedAccessCompleted; int cndSharedAccessCompleted; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ PTE_RWLOCK_MAGIC ;
 TYPE_1__* PTHREAD_RWLOCK_INITIALIZER ;
 int free (TYPE_1__*) ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 int pte_rwlock_test_init_lock ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int pthread_rwlock_destroy (pthread_rwlock_t * rwlock)
{
   pthread_rwlock_t rwl;
   int result = 0, result1 = 0, result2 = 0;

   if (rwlock == ((void*)0) || *rwlock == ((void*)0))
      return EINVAL;

   if (*rwlock != PTHREAD_RWLOCK_INITIALIZER)
   {
      rwl = *rwlock;

      if (rwl->nMagic != PTE_RWLOCK_MAGIC)
         return EINVAL;

      if ((result = pthread_mutex_lock (&(rwl->mtxExclusiveAccess))) != 0)
         return result;

      if ((result =
               pthread_mutex_lock (&(rwl->mtxSharedAccessCompleted))) != 0)
      {
         (void) pthread_mutex_unlock (&(rwl->mtxExclusiveAccess));
         return result;
      }





      if (rwl->nExclusiveAccessCount > 0
            || rwl->nSharedAccessCount > rwl->nCompletedSharedAccessCount)
      {
         result = pthread_mutex_unlock (&(rwl->mtxSharedAccessCompleted));
         result1 = pthread_mutex_unlock (&(rwl->mtxExclusiveAccess));
         result2 = EBUSY;
      }
      else
      {
         rwl->nMagic = 0;

         if ((result =
                  pthread_mutex_unlock (&(rwl->mtxSharedAccessCompleted))) != 0)
         {
            pthread_mutex_unlock (&rwl->mtxExclusiveAccess);
            return result;
         }

         if ((result =
                  pthread_mutex_unlock (&(rwl->mtxExclusiveAccess))) != 0)
            return result;

         *rwlock = ((void*)0);
         result = pthread_cond_destroy (&(rwl->cndSharedAccessCompleted));
         result1 = pthread_mutex_destroy (&(rwl->mtxSharedAccessCompleted));
         result2 = pthread_mutex_destroy (&(rwl->mtxExclusiveAccess));
         (void) free (rwl);
      }
   }
   else
   {




      pte_osMutexLock (pte_rwlock_test_init_lock);




      if (*rwlock == PTHREAD_RWLOCK_INITIALIZER)
      {






         *rwlock = ((void*)0);
      }




      else
         result = EBUSY;

      pte_osMutexUnlock(pte_rwlock_test_init_lock);

   }

   return ((result != 0) ? result : ((result1 != 0) ? result1 : result2));
}
