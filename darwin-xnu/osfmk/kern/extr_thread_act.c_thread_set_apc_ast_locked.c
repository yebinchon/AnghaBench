
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* processor_t ;
struct TYPE_10__ {scalar_t__ state; TYPE_1__* active_thread; } ;
struct TYPE_9__ {TYPE_2__* last_processor; } ;


 int AST_APC ;
 TYPE_2__* PROCESSOR_NULL ;
 scalar_t__ PROCESSOR_RUNNING ;
 int ast_propagate (TYPE_1__*) ;
 int cause_ast_check (TYPE_2__*) ;
 TYPE_1__* current_thread () ;
 int thread_ast_set (TYPE_1__*,int ) ;

__attribute__((used)) static void
thread_set_apc_ast_locked(thread_t thread)
{
 thread_ast_set(thread, AST_APC);

 if (thread == current_thread()) {
  ast_propagate(thread);
 } else {
  processor_t processor = thread->last_processor;

  if (processor != PROCESSOR_NULL &&
      processor->state == PROCESSOR_RUNNING &&
      processor->active_thread == thread) {
   cause_ast_check(processor);
  }
 }
}
