
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kperf_context {int cur_thread; } ;


 int T_KPERF_AST_CALLSTACK ;
 int kperf_ast_pend (int ,int ) ;
 int kperf_ast_set_callstack_depth (int ,int ) ;

int
kperf_ucallstack_pend(struct kperf_context * context, uint32_t depth)
{
 int did_pend = kperf_ast_pend(context->cur_thread, T_KPERF_AST_CALLSTACK);
 kperf_ast_set_callstack_depth(context->cur_thread, depth);

 return did_pend;
}
