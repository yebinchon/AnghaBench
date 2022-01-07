
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;
struct turnstile {int dummy; } ;
struct knote_lock_ctx {int dummy; } ;
struct _kevent_register {int handoff_thread; int knote; int kq; } ;


 int KNOTE_KQ_UNLOCK ;
 int TURNSTILE_INTERLOCK_NOT_HELD ;
 int knote_unlock (int ,int ,struct knote_lock_ctx*,int ) ;
 int thread_handoff_parameter (int ,int ,struct _kevent_register*) ;
 int turnstile_update_inheritor_complete (struct turnstile*,int ) ;

__attribute__((used)) static void
kevent_register_wait_block(struct turnstile *ts, thread_t thread,
  struct knote_lock_ctx *knlc, thread_continue_t cont,
  struct _kevent_register *cont_args)
{
 knote_unlock(cont_args->kq, cont_args->knote, knlc, KNOTE_KQ_UNLOCK);
 turnstile_update_inheritor_complete(ts, TURNSTILE_INTERLOCK_NOT_HELD);
 cont_args->handoff_thread = thread;
 thread_handoff_parameter(thread, cont, cont_args);
}
