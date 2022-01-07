
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef TYPE_1__* thread_t ;
typedef int spl_t ;
typedef int ast_t ;
struct TYPE_17__ {int state; int sched_flags; scalar_t__ promotions; scalar_t__ was_promoted_on_wakeup; scalar_t__ rwlock_count; int * waiting_for_mutex; int kevent_ast_bits; } ;


 int AST_APC ;
 int AST_BSD ;
 int AST_DTRACE ;
 int AST_GUARD ;
 int AST_KEVENT ;
 int AST_KPERF ;
 int AST_LEDGER ;
 int AST_MACF ;
 int AST_PER_THREAD ;
 int AST_PREEMPT ;
 int AST_PREEMPTION ;
 int AST_QUANTUM ;
 int AST_SFI ;
 int AST_TELEMETRY_ALL ;
 int AST_UNQUIESCE ;
 scalar_t__ AST_URGENT ;
 scalar_t__ FALSE ;
 int TH_IDLE ;
 int TH_SFLAG_DEPRESS ;
 int TH_SFLAG_EXEC_PROMOTED ;
 int TH_SFLAG_PROMOTED ;
 int TH_SFLAG_RW_PROMOTED ;
 int TH_SFLAG_WAITQ_PROMOTED ;
 int TRUE ;
 int assert (int) ;
 int ast_consume (int) ;
 scalar_t__ ast_peek (scalar_t__) ;
 int ast_propagate (TYPE_1__*) ;
 scalar_t__ atomic_exchange (int *,int ) ;
 int bsd_ast (TYPE_1__*) ;
 int c_ast_taken_block ;
 int counter (int ) ;
 int cpu_quiescent_counter_assert_ast () ;
 int cpu_quiescent_counter_ast () ;
 int csw_check (int ,int) ;
 int current_processor () ;
 TYPE_1__* current_thread () ;
 int dtrace_ast () ;
 int guard_ast (TYPE_1__*) ;
 int kevent_ast (TYPE_1__*,scalar_t__) ;
 int kperf_kpc_thread_ast (TYPE_1__*) ;
 int ledger_ast (TYPE_1__*) ;
 int mac_thread_userret (TYPE_1__*) ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int ml_set_interrupts_enabled (int ) ;
 int sfi_ast (TYPE_1__*) ;
 int splsched () ;
 int splx (int ) ;
 int telemetry_ast (TYPE_1__*,int) ;
 int thread_apc_ast (TYPE_1__*) ;
 int thread_ast_clear (TYPE_1__*,int) ;
 int thread_block_reason (int ,int *,int) ;
 int thread_lock (TYPE_1__*) ;
 int thread_preempted ;
 int thread_unlock (TYPE_1__*) ;
 int waitq_wait_possible (TYPE_1__*) ;

void
ast_taken_user(void)
{
 assert(ml_get_interrupts_enabled() == FALSE);

 thread_t thread = current_thread();


 assert(waitq_wait_possible(thread));
 assert((thread->state & TH_IDLE) == 0);
 if (ast_peek(AST_URGENT) == AST_URGENT) {
  ast_t urgent_reason = ast_consume(AST_PREEMPTION);

  assert(urgent_reason & AST_PREEMPT);



  thread_block_reason(thread_preempted, ((void*)0), urgent_reason);

 }







 ast_propagate(thread);
 ast_t reasons = ast_consume(AST_PER_THREAD | AST_KPERF | AST_DTRACE);

 ml_set_interrupts_enabled(TRUE);
 if (reasons & AST_APC) {
  thread_ast_clear(thread, AST_APC);
  thread_apc_ast(thread);
 }

 if (reasons & AST_GUARD) {
  thread_ast_clear(thread, AST_GUARD);
  guard_ast(thread);
 }

 if (reasons & AST_LEDGER) {
  thread_ast_clear(thread, AST_LEDGER);
  ledger_ast(thread);
 }

 if (reasons & AST_KPERF) {
  thread_ast_clear(thread, AST_KPERF);
  kperf_kpc_thread_ast(thread);
 }

 if (reasons & AST_KEVENT) {
  thread_ast_clear(thread, AST_KEVENT);
  uint16_t bits = atomic_exchange(&thread->kevent_ast_bits, 0);
  if (bits) kevent_ast(thread, bits);
 }
 spl_t s = splsched();
 assert(waitq_wait_possible(thread));
 ast_t preemption_reasons = ast_consume(AST_PREEMPTION);

 if (preemption_reasons & AST_PREEMPT) {


  thread_lock(thread);
  preemption_reasons = csw_check(current_processor(), (preemption_reasons & AST_QUANTUM));
  thread_unlock(thread);
  if (preemption_reasons & AST_PREEMPT) {
   counter(c_ast_taken_block++);

   thread_block_reason(thread_preempted, ((void*)0), preemption_reasons);

  }
 }

 if (ast_consume(AST_UNQUIESCE) == AST_UNQUIESCE) {
  cpu_quiescent_counter_ast();
 }

 cpu_quiescent_counter_assert_ast();

 splx(s);





 assert((thread->sched_flags & TH_SFLAG_WAITQ_PROMOTED) == 0);
 assert((thread->sched_flags & TH_SFLAG_RW_PROMOTED) == 0);
 assert((thread->sched_flags & TH_SFLAG_EXEC_PROMOTED) == 0);
 assert((thread->sched_flags & TH_SFLAG_PROMOTED) == 0);
 assert((thread->sched_flags & TH_SFLAG_DEPRESS) == 0);

 assert(thread->promotions == 0);
 assert(thread->was_promoted_on_wakeup == 0);
 assert(thread->waiting_for_mutex == ((void*)0));
 assert(thread->rwlock_count == 0);
}
