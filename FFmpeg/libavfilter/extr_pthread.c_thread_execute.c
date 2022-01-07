
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int avfilter_action_func ;
struct TYPE_8__ {int* rets; int thread; int * func; void* arg; TYPE_4__* ctx; } ;
typedef TYPE_3__ ThreadContext ;
struct TYPE_9__ {TYPE_2__* graph; } ;
struct TYPE_7__ {TYPE_1__* internal; } ;
struct TYPE_6__ {TYPE_3__* thread; } ;
typedef TYPE_4__ AVFilterContext ;


 int avpriv_slicethread_execute (int ,int,int ) ;

__attribute__((used)) static int thread_execute(AVFilterContext *ctx, avfilter_action_func *func,
                          void *arg, int *ret, int nb_jobs)
{
    ThreadContext *c = ctx->graph->internal->thread;

    if (nb_jobs <= 0)
        return 0;
    c->ctx = ctx;
    c->arg = arg;
    c->func = func;
    c->rets = ret;

    avpriv_slicethread_execute(c->thread, nb_jobs, 0);
    return 0;
}
