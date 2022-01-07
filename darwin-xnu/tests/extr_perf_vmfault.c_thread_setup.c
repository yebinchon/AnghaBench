
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_ASSERT_POSIX_SUCCESS (int ,char*) ;
 int T_QUIET ;
 int fault_pages (int) ;
 scalar_t__ num_threads ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ ready_thread_count ;
 int ready_thread_count_lock ;
 int start_cvar ;
 int threads_ready_cvar ;

__attribute__((used)) static void *thread_setup(void *arg)
{
  int my_index = *((int *)arg);

  T_QUIET; T_ASSERT_POSIX_SUCCESS(pthread_mutex_lock(&ready_thread_count_lock), "pthread_mutex_lock");
  ready_thread_count++;
  if(ready_thread_count == num_threads) {
    T_QUIET; T_ASSERT_POSIX_SUCCESS(pthread_cond_signal(&threads_ready_cvar), "pthread_cond_signal");
  }
  T_QUIET; T_ASSERT_POSIX_SUCCESS(pthread_cond_wait(&start_cvar, &ready_thread_count_lock), "pthread_cond_wait");
  T_QUIET; T_ASSERT_POSIX_SUCCESS(pthread_mutex_unlock(&ready_thread_count_lock), "pthread_mutex_unlock");

  fault_pages(my_index);
  return ((void*)0);
}
