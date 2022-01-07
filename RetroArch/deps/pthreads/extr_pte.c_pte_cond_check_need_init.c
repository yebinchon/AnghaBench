
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * pthread_cond_t ;


 int EINVAL ;
 int * PTHREAD_COND_INITIALIZER ;
 int pte_cond_test_init_lock ;
 int pte_osMutexLock (int ) ;
 int pte_osMutexUnlock (int ) ;
 int pthread_cond_init (int **,int *) ;

int pte_cond_check_need_init (pthread_cond_t * cond)
{
   int result = 0;
   pte_osMutexLock (pte_cond_test_init_lock);
   if (*cond == PTHREAD_COND_INITIALIZER)
      result = pthread_cond_init (cond, ((void*)0));





   else if (*cond == ((void*)0))
      result = EINVAL;


   pte_osMutexUnlock(pte_cond_test_init_lock);

   return result;
}
