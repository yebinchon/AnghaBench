
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* thread_call_t ;
typedef int spl_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {TYPE_3__* thc_call; } ;
struct TYPE_12__ {TYPE_1__ thc_state; } ;
struct TYPE_10__ {int func; } ;
struct TYPE_11__ {int tc_flags; TYPE_2__ tc_call; } ;


 scalar_t__ FALSE ;
 int THREAD_CALL_ALLOC ;
 int THREAD_CALL_ONCE ;
 TYPE_8__* current_thread () ;
 int disable_ints_and_lock () ;
 int enable_ints_and_unlock (int ) ;
 int ml_get_interrupts_enabled () ;
 int panic (char*,...) ;
 scalar_t__ thread_call_cancel_locked (TYPE_3__*) ;
 int thread_call_wait_locked (TYPE_3__*,int ) ;
 int thread_call_wait_once_locked (TYPE_3__*,int ) ;

boolean_t
thread_call_cancel_wait(thread_call_t call)
{
 if ((call->tc_flags & THREAD_CALL_ALLOC) == 0)
  panic("thread_call_cancel_wait: can't wait on thread call whose storage I don't own");

 if (!ml_get_interrupts_enabled())
  panic("unsafe thread_call_cancel_wait");

 if (current_thread()->thc_state.thc_call == call)
  panic("thread_call_cancel_wait: deadlock waiting on self from inside call: %p to function %p",
        call, call->tc_call.func);

 spl_t s = disable_ints_and_lock();

 boolean_t canceled = thread_call_cancel_locked(call);

 if ((call->tc_flags & THREAD_CALL_ONCE) == THREAD_CALL_ONCE) {





  thread_call_wait_once_locked(call, s);

 } else {







  if (canceled == FALSE) {
   thread_call_wait_locked(call, s);

  } else {
   enable_ints_and_unlock(s);
  }
 }

 return canceled;
}
