
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_3__* thread_call_t ;
typedef int spl_t ;
typedef int boolean_t ;
struct TYPE_7__ {TYPE_3__* thc_call; } ;
struct TYPE_10__ {TYPE_1__ thc_state; } ;
struct TYPE_8__ {int func; } ;
struct TYPE_9__ {int tc_flags; TYPE_2__ tc_call; } ;


 int THREAD_CALL_ALLOC ;
 int THREAD_CALL_ONCE ;
 TYPE_6__* current_thread () ;
 int disable_ints_and_lock () ;
 int ml_get_interrupts_enabled () ;
 int panic (char*,...) ;
 int thread_call_wait_once_locked (TYPE_3__*,int ) ;

boolean_t
thread_call_wait_once(thread_call_t call)
{
 if ((call->tc_flags & THREAD_CALL_ALLOC) == 0)
  panic("thread_call_wait_once: can't wait on thread call whose storage I don't own");

 if ((call->tc_flags & THREAD_CALL_ONCE) == 0)
  panic("thread_call_wait_once: can't wait_once on a non-once call");

 if (!ml_get_interrupts_enabled())
  panic("unsafe thread_call_wait_once");

 if (current_thread()->thc_state.thc_call == call)
  panic("thread_call_wait_once: deadlock waiting on self from inside call: %p to function %p",
        call, call->tc_call.func);

 spl_t s = disable_ints_and_lock();

 boolean_t waited = thread_call_wait_once_locked(call, s);


 return waited;
}
