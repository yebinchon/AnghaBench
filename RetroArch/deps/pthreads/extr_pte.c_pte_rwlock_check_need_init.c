
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_rwlock_t ;


 int EINVAL ;
 int * PTHREAD_RWLOCK_INITIALIZER ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 int pte_rwlock_test_init_lock ;
 int pthread_rwlock_init (int **,int *) ;

int pte_rwlock_check_need_init (pthread_rwlock_t * rwlock)
{
   int result = 0;
   pte_osMutexLock (pte_rwlock_test_init_lock);
   if (*rwlock == PTHREAD_RWLOCK_INITIALIZER)
      result = pthread_rwlock_init (rwlock, ((void*)0));





   else if (*rwlock == ((void*)0))
      result = EINVAL;

   pte_osMutexUnlock(pte_rwlock_test_init_lock);

   return result;
}
