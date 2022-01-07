
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int waitq_iterator_t ;
struct wq_it_ctx {void* input; void* ctx; int it; } ;
struct waitq {int waitq_set_id; } ;


 int KERN_INVALID_ARGUMENT ;
 int LINK_WALK_ONE_LEVEL ;
 int WQL_WQS ;
 int WQ_ITERATE_CONTINUE ;
 int WQ_ITERATE_SUCCESS ;
 int waitq_iterate_sets_cb ;
 int walk_waitq_links (int ,struct waitq*,int ,int ,void*,int ) ;

int waitq_iterate_sets(struct waitq *waitq, void *ctx, waitq_iterator_t it)
{
 int ret;
 struct wq_it_ctx wctx = {
  .input = (void *)waitq,
  .ctx = ctx,
  .it = it,
 };
 if (!it || !waitq)
  return KERN_INVALID_ARGUMENT;

 ret = walk_waitq_links(LINK_WALK_ONE_LEVEL, waitq, waitq->waitq_set_id,
          WQL_WQS, (void *)&wctx, waitq_iterate_sets_cb);
 if (ret == WQ_ITERATE_CONTINUE)
  ret = WQ_ITERATE_SUCCESS;
 return ret;
}
