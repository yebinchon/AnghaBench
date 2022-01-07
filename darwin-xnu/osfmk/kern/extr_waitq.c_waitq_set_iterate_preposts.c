
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int waitq_iterator_t ;
struct wq_it_ctx {void* input; void* ctx; int it; } ;
struct waitq_set {int wqset_q; } ;


 int WQ_ITERATE_INVALID ;
 int assert (int ) ;
 int waitq_held (int *) ;
 int wq_prepost_foreach_locked (struct waitq_set*,void*,int ) ;
 int wqset_iterate_prepost_cb ;

int waitq_set_iterate_preposts(struct waitq_set *wqset,
          void *ctx, waitq_iterator_t it)
{
 struct wq_it_ctx wctx = {
  .input = (void *)wqset,
  .ctx = ctx,
  .it = it,
 };
 if (!it || !wqset)
  return WQ_ITERATE_INVALID;

 assert(waitq_held(&wqset->wqset_q));

 return wq_prepost_foreach_locked(wqset, (void *)&wctx,
      wqset_iterate_prepost_cb);
}
