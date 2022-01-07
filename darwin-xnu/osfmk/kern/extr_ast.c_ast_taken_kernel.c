
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int ast_t ;
struct TYPE_4__ {int state; } ;


 int AST_PREEMPT ;
 scalar_t__ AST_PREEMPTION ;
 scalar_t__ AST_URGENT ;
 scalar_t__ FALSE ;
 int THREAD_CONTINUE_NULL ;
 int TH_IDLE ;
 int assert (int) ;
 int ast_consume (scalar_t__) ;
 int ast_off (scalar_t__) ;
 scalar_t__ ast_peek (scalar_t__) ;
 int c_ast_taken_block ;
 int counter (int ) ;
 TYPE_1__* current_thread () ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int thread_block_reason (int ,int *,int) ;
 scalar_t__ waitq_wait_possible (TYPE_1__*) ;

void
ast_taken_kernel(void)
{
 assert(ml_get_interrupts_enabled() == FALSE);

 thread_t thread = current_thread();


 if ((thread->state & TH_IDLE)) {
  ast_off(AST_PREEMPTION);
  return;
 }





 if (ast_peek(AST_URGENT) != AST_URGENT)
  return;





 if (waitq_wait_possible(thread) == FALSE) {

  ast_consume(AST_URGENT);
  return;
 }



 ast_t urgent_reason = ast_consume(AST_PREEMPTION);

 assert(urgent_reason & AST_PREEMPT);

 counter(c_ast_taken_block++);

 thread_block_reason(THREAD_CONTINUE_NULL, ((void*)0), urgent_reason);

 assert(ml_get_interrupts_enabled() == FALSE);
}
