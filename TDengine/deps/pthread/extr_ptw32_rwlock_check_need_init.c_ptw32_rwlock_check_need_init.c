
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptw32_mcs_local_node_t ;
typedef int * pthread_rwlock_t ;


 int EINVAL ;
 int * PTHREAD_RWLOCK_INITIALIZER ;
 int pthread_rwlock_init (int **,int *) ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int ptw32_rwlock_test_init_lock ;

int
ptw32_rwlock_check_need_init (pthread_rwlock_t * rwlock)
{
  int result = 0;
  ptw32_mcs_local_node_t node;





  ptw32_mcs_lock_acquire(&ptw32_rwlock_test_init_lock, &node);
  if (*rwlock == PTHREAD_RWLOCK_INITIALIZER)
    {
      result = pthread_rwlock_init (rwlock, ((void*)0));
    }
  else if (*rwlock == ((void*)0))
    {





      result = EINVAL;
    }

  ptw32_mcs_lock_release(&node);

  return result;
}
