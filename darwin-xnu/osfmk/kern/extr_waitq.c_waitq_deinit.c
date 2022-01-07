
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {scalar_t__ waitq_isvalid; } ;
typedef int spl_t ;


 int assert (int ) ;
 int splsched () ;
 int splx (int ) ;
 int waitq_empty (struct waitq*) ;
 scalar_t__ waitq_irq_safe (struct waitq*) ;
 int waitq_is_queue (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_unlink_all_unlock (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;
 int waitq_valid (struct waitq*) ;

void waitq_deinit(struct waitq *waitq)
{
 spl_t s;

 if (!waitq || !waitq_is_queue(waitq))
  return;

 if (waitq_irq_safe(waitq))
  s = splsched();
 waitq_lock(waitq);
 if (!waitq_valid(waitq)) {
  waitq_unlock(waitq);
  if (waitq_irq_safe(waitq))
   splx(s);
  return;
 }

 waitq->waitq_isvalid = 0;

 if (!waitq_irq_safe(waitq)) {
  waitq_unlink_all_unlock(waitq);

 } else {
  waitq_unlock(waitq);
  splx(s);
 }

 assert(waitq_empty(waitq));
}
