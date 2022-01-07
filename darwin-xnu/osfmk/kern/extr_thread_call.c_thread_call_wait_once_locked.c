
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wait_result_t ;
typedef TYPE_1__* thread_call_t ;
typedef int spl_t ;
typedef int boolean_t ;
struct TYPE_4__ {int tc_flags; } ;


 int FALSE ;
 scalar_t__ THREAD_AWAKENED ;
 int THREAD_CALL_ALLOC ;
 int THREAD_CALL_ONCE ;
 int THREAD_CALL_RUNNING ;
 int THREAD_CALL_WAIT ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 scalar_t__ THREAD_WAITING ;
 int TRUE ;
 int assert (int) ;
 scalar_t__ assert_wait (TYPE_1__*,int ) ;
 int enable_ints_and_unlock (int ) ;
 int panic (char*,scalar_t__) ;
 scalar_t__ thread_block (int ) ;

__attribute__((used)) static boolean_t
thread_call_wait_once_locked(thread_call_t call, spl_t s)
{
 assert(call->tc_flags & THREAD_CALL_ALLOC);
 assert(call->tc_flags & THREAD_CALL_ONCE);

 if ((call->tc_flags & THREAD_CALL_RUNNING) == 0) {
  enable_ints_and_unlock(s);
  return FALSE;
 }


 call->tc_flags |= THREAD_CALL_WAIT;

 wait_result_t res = assert_wait(call, THREAD_UNINT);
 if (res != THREAD_WAITING)
  panic("Unable to assert wait: %d", res);

 enable_ints_and_unlock(s);

 res = thread_block(THREAD_CONTINUE_NULL);
 if (res != THREAD_AWAKENED)
  panic("Awoken with %d?", res);


 return TRUE;
}
