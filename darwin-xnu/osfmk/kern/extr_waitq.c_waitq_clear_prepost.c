
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;


 int assert (int) ;
 int waitq_clear_prepost_locked (struct waitq*) ;
 int waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;
 int waitq_valid (struct waitq*) ;

void waitq_clear_prepost(struct waitq *waitq)
{
 assert(waitq_valid(waitq));
 assert(!waitq_irq_safe(waitq));

 waitq_lock(waitq);

 (void)waitq_clear_prepost_locked(waitq);
 waitq_unlock(waitq);
}
