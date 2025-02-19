
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int thread_state_t ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_14__ {scalar_t__ active; } ;


 scalar_t__ KERN_ABORTED ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ KERN_TERMINATED ;
 TYPE_1__* THREAD_NULL ;
 int TRUE ;
 TYPE_1__* current_thread () ;
 int extmod_statistics_incr_thread_set_state (TYPE_1__*) ;
 scalar_t__ machine_thread_set_state (TYPE_1__*,int,int ,int ) ;
 scalar_t__ machine_thread_state_convert_from_user (TYPE_1__*,int,int ,int ) ;
 int thread_hold (TYPE_1__*) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;
 int thread_release (TYPE_1__*) ;
 scalar_t__ thread_stop (TYPE_1__*,int ) ;
 int thread_unstop (TYPE_1__*) ;

__attribute__((used)) static inline kern_return_t
thread_set_state_internal(
 thread_t thread,
 int flavor,
 thread_state_t state,
 mach_msg_type_number_t state_count,
 boolean_t from_user)
{
 kern_return_t result = KERN_SUCCESS;

 if (thread == THREAD_NULL)
  return (KERN_INVALID_ARGUMENT);

 thread_mtx_lock(thread);

 if (thread->active) {
  if (from_user) {
   result = machine_thread_state_convert_from_user(thread, flavor,
     state, state_count);
   if (result != KERN_SUCCESS) {
    goto out;
   }
  }
  if (thread != current_thread()) {
   thread_hold(thread);

   thread_mtx_unlock(thread);

   if (thread_stop(thread, TRUE)) {
    thread_mtx_lock(thread);
    result = machine_thread_set_state(
          thread, flavor, state, state_count);
    thread_unstop(thread);
   }
   else {
    thread_mtx_lock(thread);
    result = KERN_ABORTED;
   }

   thread_release(thread);
  }
  else
   result = machine_thread_set_state(
         thread, flavor, state, state_count);
 }
 else
  result = KERN_TERMINATED;

 if ((result == KERN_SUCCESS) && from_user)
  extmod_statistics_incr_thread_set_state(thread);

out:
 thread_mtx_unlock(thread);

 return (result);
}
