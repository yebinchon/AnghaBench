
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int waitq_prepost; } ;
struct waitq_set {TYPE_1__ wqset_q; scalar_t__ wqset_prepost_id; int wqset_id; } ;
typedef int spl_t ;


 int assert (int ) ;
 int splsched () ;
 int splx (int ) ;
 scalar_t__ waitq_irq_safe (TYPE_1__*) ;
 int waitq_set_lock (struct waitq_set*) ;
 int waitq_set_unlock (struct waitq_set*) ;
 int waitqs_is_set (struct waitq_set*) ;
 int wq_prepost_iterate (scalar_t__,int *,int ) ;
 int wqdbg_v (char*,int ) ;
 int wqset_clear_prepost_chain_cb ;

void waitq_set_clear_preposts(struct waitq_set *wqset)
{
 uint64_t prepost_id;
 spl_t spl;

 assert(waitqs_is_set(wqset));

 if (!wqset->wqset_q.waitq_prepost || !wqset->wqset_prepost_id)
  return;

 wqdbg_v("Clearing all preposted queues on waitq_set: 0x%llx",
  wqset->wqset_id);

 if (waitq_irq_safe(&wqset->wqset_q))
  spl = splsched();
 waitq_set_lock(wqset);
 prepost_id = wqset->wqset_prepost_id;
 wqset->wqset_prepost_id = 0;
 waitq_set_unlock(wqset);
 if (waitq_irq_safe(&wqset->wqset_q))
  splx(spl);


 if (prepost_id)
  (void)wq_prepost_iterate(prepost_id, ((void*)0),
      wqset_clear_prepost_chain_cb);
}
