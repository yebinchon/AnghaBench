
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int thread_t ;
typedef int task_t ;
struct kperf_sample {int dummy; } ;
struct kperf_context {int cur_pid; int cur_task; int cur_thread; } ;


 int BUF_INFO (int,int,...) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int PERF_AST_HNDLR ;
 unsigned int SAMPLER_TH_DISPATCH ;
 unsigned int SAMPLER_TH_INFO ;
 unsigned int SAMPLER_USTACK ;
 int SAMPLE_CONTINUE ;
 int T_KPERF_AST_CALLSTACK ;
 int T_KPERF_AST_DISPATCH ;
 int T_KPERF_GET_CALLSTACK_DEPTH (int) ;
 int get_threadtask (int ) ;
 int kperf_get_thread_flags (int ) ;
 int kperf_sample_internal (struct kperf_sample*,struct kperf_context*,unsigned int,int ,int ,int) ;
 int memset (struct kperf_sample*,int ,int) ;
 scalar_t__ task_did_exec (int ) ;
 scalar_t__ task_is_exec_copy (int ) ;
 int task_pid (int ) ;

__attribute__((noinline))
void
kperf_thread_ast_handler(thread_t thread)
{
 BUF_INFO(PERF_AST_HNDLR | DBG_FUNC_START, thread, kperf_get_thread_flags(thread));


 struct kperf_sample sbuf;
 memset(&sbuf, 0, sizeof(struct kperf_sample));

 task_t task = get_threadtask(thread);

 if (task_did_exec(task) || task_is_exec_copy(task)) {
  BUF_INFO(PERF_AST_HNDLR | DBG_FUNC_END, SAMPLE_CONTINUE);
  return;
 }


 struct kperf_context ctx = {
  .cur_thread = thread,
  .cur_task = task,
  .cur_pid = task_pid(task),
 };


 unsigned int sample_what = 0;
 uint32_t flags = kperf_get_thread_flags(thread);

 if (flags & T_KPERF_AST_DISPATCH) {
  sample_what |= SAMPLER_TH_DISPATCH;
 }
 if (flags & T_KPERF_AST_CALLSTACK) {
  sample_what |= SAMPLER_USTACK;
  sample_what |= SAMPLER_TH_INFO;
 }

 uint32_t ucallstack_depth = T_KPERF_GET_CALLSTACK_DEPTH(flags);

 int r = kperf_sample_internal(&sbuf, &ctx, sample_what, 0, 0, ucallstack_depth);

 BUF_INFO(PERF_AST_HNDLR | DBG_FUNC_END, r);
}
