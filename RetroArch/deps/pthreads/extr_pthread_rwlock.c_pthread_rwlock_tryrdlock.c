
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pthread_rwlock_t ;
struct TYPE_5__ {scalar_t__ nMagic; scalar_t__ nSharedAccessCount; scalar_t__ nCompletedSharedAccessCount; int mtxExclusiveAccess; int mtxSharedAccessCompleted; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ INT_MAX ;
 scalar_t__ PTE_RWLOCK_MAGIC ;
 TYPE_1__* PTHREAD_RWLOCK_INITIALIZER ;
 int pte_rwlock_check_need_init (TYPE_1__**) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_trylock (int *) ;
 int pthread_mutex_unlock (int *) ;

int pthread_rwlock_tryrdlock (pthread_rwlock_t * rwlock)
{
   int result;
   pthread_rwlock_t rwl;

   if (rwlock == ((void*)0) || *rwlock == ((void*)0))
      return EINVAL;







   if (*rwlock == PTHREAD_RWLOCK_INITIALIZER)
   {
      result = pte_rwlock_check_need_init (rwlock);

      if (result != 0 && result != EBUSY)
      {
         return result;
      }
   }

   rwl = *rwlock;

   if (rwl->nMagic != PTE_RWLOCK_MAGIC)
   {
      return EINVAL;
   }

   if ((result = pthread_mutex_trylock (&(rwl->mtxExclusiveAccess))) != 0)
   {
      return result;
   }

   if (++rwl->nSharedAccessCount == INT_MAX)
   {
      if ((result =
               pthread_mutex_lock (&(rwl->mtxSharedAccessCompleted))) != 0)
      {
         (void) pthread_mutex_unlock (&(rwl->mtxExclusiveAccess));
         return result;
      }

      rwl->nSharedAccessCount -= rwl->nCompletedSharedAccessCount;
      rwl->nCompletedSharedAccessCount = 0;

      if ((result =
               pthread_mutex_unlock (&(rwl->mtxSharedAccessCompleted))) != 0)
      {
         (void) pthread_mutex_unlock (&(rwl->mtxExclusiveAccess));
         return result;
      }
   }

   return (pthread_mutex_unlock (&rwl->mtxExclusiveAccess));
}
