
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTE_TRUE ;
 int pte_cleanupKey ;
 int pte_cond_list_lock ;
 int pte_cond_test_init_lock ;
 int pte_mutex_test_init_lock ;
 int pte_osInit () ;
 int pte_osMutexCreate (int *) ;
 int pte_processInitialized ;
 int pte_rwlock_test_init_lock ;
 int pte_selfThreadKey ;
 int pte_spinlock_test_init_lock ;
 int pte_thread_reuse_lock ;
 scalar_t__ pthread_key_create (int *,int *) ;
 int pthread_terminate () ;

int pthread_init(void)
{







   if (pte_processInitialized)
      return PTE_TRUE;

   pte_processInitialized = PTE_TRUE;


   pte_osInit();




   if ((pthread_key_create (&pte_selfThreadKey, ((void*)0)) != 0) ||
         (pthread_key_create (&pte_cleanupKey, ((void*)0)) != 0))
      pthread_terminate();




   pte_osMutexCreate (&pte_thread_reuse_lock);
   pte_osMutexCreate (&pte_mutex_test_init_lock);
   pte_osMutexCreate (&pte_cond_list_lock);
   pte_osMutexCreate (&pte_cond_test_init_lock);
   pte_osMutexCreate (&pte_rwlock_test_init_lock);
   pte_osMutexCreate (&pte_spinlock_test_init_lock);

   return (pte_processInitialized);
}
