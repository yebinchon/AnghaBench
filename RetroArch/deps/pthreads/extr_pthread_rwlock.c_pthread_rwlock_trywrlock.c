
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pthread_rwlock_t ;
struct TYPE_5__ {scalar_t__ nMagic; int nExclusiveAccessCount; scalar_t__ nCompletedSharedAccessCount; scalar_t__ nSharedAccessCount; int mtxExclusiveAccess; int mtxSharedAccessCompleted; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ PTE_RWLOCK_MAGIC ;
 TYPE_1__* PTHREAD_RWLOCK_INITIALIZER ;
 int pte_rwlock_check_need_init (TYPE_1__**) ;
 int pthread_mutex_trylock (int *) ;
 int pthread_mutex_unlock (int *) ;

int pthread_rwlock_trywrlock (pthread_rwlock_t * rwlock)
{
   int result, result1;
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

   if ((result =
            pthread_mutex_trylock (&(rwl->mtxSharedAccessCompleted))) != 0)
   {
      result1 = pthread_mutex_unlock (&(rwl->mtxExclusiveAccess));
      return ((result1 != 0) ? result1 : result);
   }

   if (rwl->nExclusiveAccessCount == 0)
   {
      if (rwl->nCompletedSharedAccessCount > 0)
      {
         rwl->nSharedAccessCount -= rwl->nCompletedSharedAccessCount;
         rwl->nCompletedSharedAccessCount = 0;
      }

      if (rwl->nSharedAccessCount > 0)
      {
         if ((result =
                  pthread_mutex_unlock (&(rwl->mtxSharedAccessCompleted))) != 0)
         {
            (void) pthread_mutex_unlock (&(rwl->mtxExclusiveAccess));
            return result;
         }

         if ((result =
                  pthread_mutex_unlock (&(rwl->mtxExclusiveAccess))) == 0)
         {
            result = EBUSY;
         }
      }
      else
      {
         rwl->nExclusiveAccessCount = 1;
      }
   }
   else
   {
      result = EBUSY;
   }

   return result;
}
