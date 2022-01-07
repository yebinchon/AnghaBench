
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct waitq {scalar_t__ waitq_set_id; } ;
typedef int kern_return_t ;


 int KERN_SUCCESS ;
 int LINK_WALK_ONE_LEVEL ;
 scalar_t__ VM_KERNEL_UNSLIDE_OR_PERM (struct waitq*) ;
 int WQL_LINK ;
 int assert (int) ;
 int waitq_clear_prepost_locked (struct waitq*) ;
 int waitq_irq_safe (struct waitq*) ;
 int waitq_unlink_all_cb ;
 int waitq_unlock (struct waitq*) ;
 int walk_waitq_links (int ,struct waitq*,scalar_t__,int ,int *,int ) ;
 int wqdbg_v (char*,void*) ;

kern_return_t waitq_unlink_all_unlock(struct waitq *waitq)
{
 uint64_t old_set_id = 0;
 wqdbg_v("unlink waitq %p from all sets",
  (void *)VM_KERNEL_UNSLIDE_OR_PERM(waitq));
 assert(!waitq_irq_safe(waitq));


 if (waitq->waitq_set_id == 0) {
  waitq_unlock(waitq);
  return KERN_SUCCESS;
 }

 old_set_id = waitq->waitq_set_id;
 waitq->waitq_set_id = 0;







 (void)waitq_clear_prepost_locked(waitq);

 waitq_unlock(waitq);

 if (old_set_id) {





  (void)walk_waitq_links(LINK_WALK_ONE_LEVEL, waitq, old_set_id,
           WQL_LINK, ((void*)0), waitq_unlink_all_cb);
 }

 return KERN_SUCCESS;
}
