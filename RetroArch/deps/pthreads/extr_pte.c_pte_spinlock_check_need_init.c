
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_spinlock_t ;


 int EINVAL ;
 int PTHREAD_PROCESS_PRIVATE ;
 int * PTHREAD_SPINLOCK_INITIALIZER ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 int pte_spinlock_test_init_lock ;
 int pthread_spin_init (int **,int ) ;

int pte_spinlock_check_need_init (pthread_spinlock_t * lock)
{
   int result = 0;
   pte_osMutexLock (pte_spinlock_test_init_lock);
   if (*lock == PTHREAD_SPINLOCK_INITIALIZER)
      result = pthread_spin_init (lock, PTHREAD_PROCESS_PRIVATE);





   else if (*lock == ((void*)0))
      result = EINVAL;

   pte_osMutexUnlock(pte_spinlock_test_init_lock);

   return (result);
}
