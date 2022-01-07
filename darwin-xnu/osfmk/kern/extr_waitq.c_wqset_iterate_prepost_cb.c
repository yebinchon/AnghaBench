
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int id; } ;
struct wq_prepost {TYPE_1__ wqp_prepostid; } ;
struct wq_it_ctx {int (* it ) (int ,struct waitq*,struct waitq_set*) ;int ctx; } ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;


 int WQ_ITERATE_BREAK ;
 int WQ_ITERATE_BREAK_KEEP_LOCKED ;
 int WQ_ITERATE_DROPPED ;
 int WQ_ITERATE_RESTART ;
 int assert (int) ;
 int delay (int) ;
 int stub1 (int ,struct waitq*,struct waitq_set*) ;
 int waitq_irq_safe (struct waitq*) ;
 scalar_t__ waitq_lock_try (struct waitq*) ;
 int waitq_set_lock (struct waitq_set*) ;
 int waitq_set_unlock (struct waitq_set*) ;
 int waitq_unlock (struct waitq*) ;
 struct wq_prepost* wq_prepost_get (int ) ;
 int wq_prepost_put (struct wq_prepost*) ;
 int wqdbg_v (char*,struct waitq_set*,struct wq_prepost*,int ,struct waitq*) ;
 int wqp_is_valid (struct wq_prepost*) ;

__attribute__((used)) static int wqset_iterate_prepost_cb(struct waitq_set *wqset, void *ctx,
        struct wq_prepost *wqp, struct waitq *waitq)
{
 struct wq_it_ctx *wctx = (struct wq_it_ctx *)(ctx);
 uint64_t wqp_id;
 int ret;

 (void)wqp;
 assert(!waitq_irq_safe(waitq));

 if (waitq_lock_try(waitq))
  goto call_iterator;

 if (!wqp_is_valid(wqp))
  return WQ_ITERATE_RESTART;







 wqp_id = wqp->wqp_prepostid.id;
 wq_prepost_put(wqp);
 waitq_set_unlock(wqset);
 wqdbg_v("dropped set:%p lock waiting for wqp:%p (0x%llx -> wq:%p)",
  wqset, wqp, wqp->wqp_prepostid.id, waitq);
 delay(1);
 waitq_set_lock(wqset);
 wqp = wq_prepost_get(wqp_id);
 if (!wqp)

  return WQ_ITERATE_DROPPED;
 return WQ_ITERATE_RESTART;

call_iterator:
 if (!wqp_is_valid(wqp)) {
  ret = WQ_ITERATE_RESTART;
  goto out_unlock;
 }


 ret = wctx->it(wctx->ctx, waitq, wqset);

 if (ret == WQ_ITERATE_BREAK_KEEP_LOCKED) {
  ret = WQ_ITERATE_BREAK;
  goto out;
 }

out_unlock:
 waitq_unlock(waitq);
out:
 return ret;
}
