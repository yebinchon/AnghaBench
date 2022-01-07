
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;
typedef int kern_return_t ;


 int KERN_SUCCESS ;
 int assert (int) ;
 int panic (char*,struct waitq*) ;
 int waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_unlink_all_unlock (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;
 int waitq_valid (struct waitq*) ;

kern_return_t waitq_unlink_all(struct waitq *waitq)
{
 kern_return_t kr = KERN_SUCCESS;

 if (!waitq_valid(waitq))
  panic("Invalid waitq: %p", waitq);

 assert(!waitq_irq_safe(waitq));
 waitq_lock(waitq);
 if (!waitq_valid(waitq)) {
  waitq_unlock(waitq);
  return KERN_SUCCESS;
 }

 kr = waitq_unlink_all_unlock(waitq);


 return kr;
}
