
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* func ) (int ,int ,int,int) ;int* rets; int arg; int ctx; } ;
typedef TYPE_1__ ThreadContext ;


 int stub1 (int ,int ,int,int) ;

__attribute__((used)) static void worker_func(void *priv, int jobnr, int threadnr, int nb_jobs, int nb_threads)
{
    ThreadContext *c = priv;
    int ret = c->func(c->ctx, c->arg, jobnr, nb_jobs);
    if (c->rets)
        c->rets[jobnr] = ret;
}
