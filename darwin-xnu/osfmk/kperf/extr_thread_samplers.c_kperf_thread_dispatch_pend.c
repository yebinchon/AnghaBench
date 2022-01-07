
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kperf_context {int cur_thread; } ;


 int T_KPERF_AST_DISPATCH ;
 int kperf_ast_pend (int ,int ) ;

int
kperf_thread_dispatch_pend(struct kperf_context *context)
{
 return kperf_ast_pend(context->cur_thread, T_KPERF_AST_DISPATCH);
}
