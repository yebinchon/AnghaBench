
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int thread_t ;
typedef scalar_t__ boolean_t ;


 int AST_TELEMETRY_KERNEL ;
 int AST_TELEMETRY_PMI ;
 int AST_TELEMETRY_USER ;
 scalar_t__ FALSE ;
 int ast_propagate (int ) ;
 int current_thread () ;
 scalar_t__ telemetry_is_active (int ) ;
 scalar_t__ telemetry_needs_record ;
 int thread_ast_set (int ,int ) ;

void telemetry_mark_curthread(boolean_t interrupted_userspace, boolean_t pmi)
{
 uint32_t ast_bits = 0;
 thread_t thread = current_thread();





 if (telemetry_is_active(thread) == FALSE) {
  return;
 }

 ast_bits |= (interrupted_userspace ? AST_TELEMETRY_USER : AST_TELEMETRY_KERNEL);
 if (pmi) {
  ast_bits |= AST_TELEMETRY_PMI;
 }

 telemetry_needs_record = FALSE;
 thread_ast_set(thread, ast_bits);
 ast_propagate(thread);
}
