
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptw32_mcs_local_node_t ;
typedef int * pthread_spinlock_t ;


 int EINVAL ;
 int PTHREAD_PROCESS_PRIVATE ;
 int * PTHREAD_SPINLOCK_INITIALIZER ;
 int pthread_spin_init (int **,int ) ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int ptw32_spinlock_test_init_lock ;

int
ptw32_spinlock_check_need_init (pthread_spinlock_t * lock)
{
  int result = 0;
  ptw32_mcs_local_node_t node;





  ptw32_mcs_lock_acquire(&ptw32_spinlock_test_init_lock, &node);
  if (*lock == PTHREAD_SPINLOCK_INITIALIZER)
    {
      result = pthread_spin_init (lock, PTHREAD_PROCESS_PRIVATE);
    }
  else if (*lock == ((void*)0))
    {





      result = EINVAL;
    }

  ptw32_mcs_lock_release(&node);

  return (result);
}
