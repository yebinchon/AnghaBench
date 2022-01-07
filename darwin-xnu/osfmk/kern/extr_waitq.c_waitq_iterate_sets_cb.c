
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wq_it_ctx {int (* it ) (int ,struct waitq*,struct waitq_set*) ;scalar_t__ input; int ctx; } ;
struct waitq {int dummy; } ;
struct waitq_set {struct waitq wqset_q; } ;
struct TYPE_2__ {struct waitq_set* wql_set; } ;
struct waitq_link {TYPE_1__ wql_wqs; } ;


 scalar_t__ WQL_WQS ;
 int assert (int) ;
 int stub1 (int ,struct waitq*,struct waitq_set*) ;
 int waitq_irq_safe (struct waitq*) ;
 int waitq_set_lock (struct waitq_set*) ;
 int waitq_set_unlock (struct waitq_set*) ;
 scalar_t__ wql_type (struct waitq_link*) ;

__attribute__((used)) static int waitq_iterate_sets_cb(struct waitq *waitq, void *ctx,
     struct waitq_link *link)
{
 struct wq_it_ctx *wctx = (struct wq_it_ctx *)(ctx);
 struct waitq_set *wqset;
 int ret;

 (void)waitq;
 assert(!waitq_irq_safe(waitq));
 assert(wql_type(link) == WQL_WQS);





 wqset = link->wql_wqs.wql_set;
 assert(wqset != ((void*)0));
 assert(!waitq_irq_safe(&wqset->wqset_q));
 waitq_set_lock(wqset);

 ret = wctx->it(wctx->ctx, (struct waitq *)wctx->input, wqset);

 waitq_set_unlock(wqset);
 return ret;
}
