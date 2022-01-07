
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq_set {scalar_t__ wqset_prepost_id; } ;
struct waitq {scalar_t__ waitq_prepost_id; } ;
struct _is_posted_ctx {int did_prepost; struct waitq* posting_wq; } ;


 int wq_is_preposted_on_set_cb ;
 int wq_prepost_foreach_locked (struct waitq_set*,void*,int ) ;

__attribute__((used)) static int wq_is_preposted_on_set(struct waitq *waitq, struct waitq_set *wqset)
{
 int ret;
 struct _is_posted_ctx pctx;





 if (waitq->waitq_prepost_id != 0 &&
     wqset->wqset_prepost_id == waitq->waitq_prepost_id)
  return 1;


 pctx.posting_wq = waitq;
 pctx.did_prepost = 0;
 ret = wq_prepost_foreach_locked(wqset, (void *)&pctx,
     wq_is_preposted_on_set_cb);
 return pctx.did_prepost;
}
