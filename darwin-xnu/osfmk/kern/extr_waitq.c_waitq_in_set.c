
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq_link {int dummy; } ;
struct waitq {scalar_t__ waitq_set_id; } ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;
 struct waitq_link* wql_get_link (scalar_t__) ;
 int wql_put_link (struct waitq_link*) ;

boolean_t waitq_in_set(struct waitq *waitq)
{
 struct waitq_link *link;
 boolean_t inset = FALSE;

 if (waitq_irq_safe(waitq))
  return FALSE;

 waitq_lock(waitq);

 if (!waitq->waitq_set_id)
  goto out_unlock;

 link = wql_get_link(waitq->waitq_set_id);
 if (link) {

  inset = TRUE;
  wql_put_link(link);
 } else {

  waitq->waitq_set_id = 0;
 }

out_unlock:
 waitq_unlock(waitq);
 return inset;
}
