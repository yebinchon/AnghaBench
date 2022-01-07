
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;
struct lck_mtx_thread_arg {int * other_thread; scalar_t__ my_locked; scalar_t__* other_locked; } ;
typedef scalar_t__ kern_return_t ;
typedef int event_t ;


 scalar_t__ KERN_SUCCESS ;
 int THREAD_AWAKENED ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 int assert_wait (int ,int ) ;
 int clear_wait (int ,int ) ;
 int current_thread () ;
 int erase_all_test_mtx_stats () ;
 scalar_t__ get_test_mtx_stats_string (char*,int) ;
 int iterations ;
 scalar_t__ kernel_thread_start (int ,struct lck_mtx_thread_arg*,int *) ;
 int os_atomic_load (scalar_t__*,int ) ;
 int os_atomic_xchg (int **,int ,int ) ;
 int relaxed ;
 int release ;
 scalar_t__ synch ;
 scalar_t__ test_mtx_lock_unlock_contended_thread ;
 int thread_block (int ) ;
 int thread_deallocate (int ) ;
 scalar_t__ wait_barrier ;

kern_return_t
lck_mtx_test_mtx_contended(
 int iter,
 char* buffer,
 int buffer_size)
{
 thread_t thread1, thread2;
 kern_return_t result;
 struct lck_mtx_thread_arg targs[2] = {};
 synch = 0;
 wait_barrier = 0;
 iterations = iter;

 erase_all_test_mtx_stats();

 targs[0].other_thread = ((void*)0);
        targs[1].other_thread = ((void*)0);

 result = kernel_thread_start((thread_continue_t)test_mtx_lock_unlock_contended_thread, &targs[0], &thread1);
 if (result != KERN_SUCCESS) {
  return 0;
 }

 result = kernel_thread_start((thread_continue_t)test_mtx_lock_unlock_contended_thread, &targs[1], &thread2);
 if (result != KERN_SUCCESS) {
  thread_deallocate(thread1);
  return 0;
 }


 targs[0].my_locked = 0;
 targs[0].other_locked = &targs[1].my_locked;

 os_atomic_xchg(&targs[0].other_thread, thread2, release);


 targs[1].my_locked = 0;
 targs[1].other_locked = &targs[0].my_locked;

 os_atomic_xchg(&targs[1].other_thread, thread1, release);

 while (os_atomic_load(&wait_barrier, relaxed) != 2) {
  assert_wait((event_t) &wait_barrier, THREAD_UNINT);
  if (os_atomic_load(&wait_barrier, relaxed) != 2) {
   (void) thread_block(THREAD_CONTINUE_NULL);
  } else {
   clear_wait(current_thread(), THREAD_AWAKENED);
  }
 }

 thread_deallocate(thread1);
 thread_deallocate(thread2);

 return get_test_mtx_stats_string(buffer, buffer_size);
}
