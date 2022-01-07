
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kperf_context {int cur_pid; } ;


 int BUF_DATA (int ,int ) ;
 int PERF_TK_INFO_DATA ;
 int assert (int ) ;

void
kperf_task_info_log(struct kperf_context *ctx)
{
 assert(ctx != ((void*)0));

 BUF_DATA(PERF_TK_INFO_DATA, ctx->cur_pid);
}
