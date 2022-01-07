
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wait_result_t ;
typedef scalar_t__ uint64_t ;
typedef TYPE_1__* thread_call_t ;
typedef int spl_t ;
struct TYPE_4__ {int tc_flags; scalar_t__ tc_submit_count; scalar_t__ tc_finish_count; } ;


 scalar_t__ THREAD_AWAKENED ;
 int THREAD_CALL_ALLOC ;
 int THREAD_CALL_WAIT ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 scalar_t__ THREAD_WAITING ;
 int assert (int) ;
 scalar_t__ assert_wait (TYPE_1__*,int ) ;
 int disable_ints_and_lock () ;
 int enable_ints_and_unlock (int ) ;
 int panic (char*,scalar_t__) ;
 scalar_t__ thread_block (int ) ;

__attribute__((used)) static void
thread_call_wait_locked(thread_call_t call, spl_t s)
{
 uint64_t submit_count;
 wait_result_t res;

 assert(call->tc_flags & THREAD_CALL_ALLOC);

 submit_count = call->tc_submit_count;

 while (call->tc_finish_count < submit_count) {
  call->tc_flags |= THREAD_CALL_WAIT;

  res = assert_wait(call, THREAD_UNINT);
  if (res != THREAD_WAITING)
   panic("Unable to assert wait: %d", res);

  enable_ints_and_unlock(s);

  res = thread_block(THREAD_CONTINUE_NULL);
  if (res != THREAD_AWAKENED)
   panic("Awoken with %d?", res);

  s = disable_ints_and_lock();
 }

 enable_ints_and_unlock(s);
}
