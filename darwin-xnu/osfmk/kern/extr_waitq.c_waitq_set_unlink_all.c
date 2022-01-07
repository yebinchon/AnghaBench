
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq_set {int wqset_q; } ;
typedef int kern_return_t ;


 int assert (int) ;
 int waitq_irq_safe (int *) ;
 int waitq_set_lock (struct waitq_set*) ;
 int waitq_set_unlink_all_unlock (struct waitq_set*) ;
 int waitqs_is_set (struct waitq_set*) ;

kern_return_t waitq_set_unlink_all(struct waitq_set *wqset)
{
 assert(waitqs_is_set(wqset));
 assert(!waitq_irq_safe(&wqset->wqset_q));

 waitq_set_lock(wqset);
 return waitq_set_unlink_all_unlock(wqset);

}
