
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq_set {int wqset_id; } ;
struct waitq {int dummy; } ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ VM_KERNEL_UNSLIDE_OR_PERM (struct waitq*) ;
 int assert (int) ;
 int waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_unlink_locked (struct waitq*,struct waitq_set*) ;
 int waitq_unlock (struct waitq*) ;
 int waitq_valid (struct waitq*) ;
 int waitqs_is_set (struct waitq_set*) ;
 int wqdbg_v (char*,void*,int ) ;

kern_return_t waitq_unlink(struct waitq *waitq, struct waitq_set *wqset)
{
 kern_return_t kr = KERN_SUCCESS;

 assert(waitqs_is_set(wqset));





 if (!waitq_valid(waitq))
  return KERN_INVALID_ARGUMENT;

 wqdbg_v("unlink waitq %p from set 0x%llx",
  (void *)VM_KERNEL_UNSLIDE_OR_PERM(waitq), wqset->wqset_id);

 assert(!waitq_irq_safe(waitq));

 waitq_lock(waitq);

 kr = waitq_unlink_locked(waitq, wqset);

 waitq_unlock(waitq);
 return kr;
}
