
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_mutex_t ;


 int EINVAL ;
 int * PTHREAD_ERRORCHECK_MUTEX_INITIALIZER ;
 int * PTHREAD_MUTEX_INITIALIZER ;
 int * PTHREAD_RECURSIVE_MUTEX_INITIALIZER ;
 int pte_errorcheck_mutexattr ;
 int pte_mutex_test_init_lock ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 int pte_recursive_mutexattr ;
 int pthread_mutex_init (int **,int *) ;

int pte_mutex_check_need_init (pthread_mutex_t * mutex)
{
   register int result = 0;
   register pthread_mutex_t mtx;
   pte_osMutexLock (pte_mutex_test_init_lock);
   mtx = *mutex;

   if (mtx == PTHREAD_MUTEX_INITIALIZER)
      result = pthread_mutex_init (mutex, ((void*)0));
   else if (mtx == PTHREAD_RECURSIVE_MUTEX_INITIALIZER)
      result = pthread_mutex_init (mutex, &pte_recursive_mutexattr);
   else if (mtx == PTHREAD_ERRORCHECK_MUTEX_INITIALIZER)
      result = pthread_mutex_init (mutex, &pte_errorcheck_mutexattr);





   else if (mtx == ((void*)0))
      result = EINVAL;

   pte_osMutexUnlock(pte_mutex_test_init_lock);

   return (result);
}
