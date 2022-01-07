
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int spl_t ;
typedef int processor_t ;
typedef int ast_t ;


 int AST_NONE ;
 int AST_PREEMPT ;
 int AST_YIELD ;
 int THREAD_CONTINUE_NULL ;
 int ast_on (int) ;
 int* ast_pending () ;
 int csw_check (int ,int ) ;
 int current_processor () ;
 int current_thread () ;
 int splsched () ;
 int splx (int ) ;
 int thread_block_reason (int ,int *,int) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;

void
thread_yield_to_preemption()
{




 ast_t *pending_ast = ast_pending();
 ast_t ast = AST_NONE;
 processor_t p;

 if (*pending_ast & AST_PREEMPT) {
  thread_t self = current_thread();

  spl_t s = splsched();

  p = current_processor();
  thread_lock(self);
  ast = csw_check(p, AST_YIELD);
  ast_on(ast);
  thread_unlock(self);

  if (ast != AST_NONE) {
   (void)thread_block_reason(THREAD_CONTINUE_NULL, ((void*)0), ast);
  }

  splx(s);
 }
}
