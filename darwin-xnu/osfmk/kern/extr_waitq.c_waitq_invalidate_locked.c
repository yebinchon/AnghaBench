
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {scalar_t__ waitq_isvalid; } ;


 int assert (int ) ;
 int waitq_held (struct waitq*) ;
 int waitq_is_valid (struct waitq*) ;

void waitq_invalidate_locked(struct waitq *waitq)
{
 assert(waitq_held(waitq));
 assert(waitq_is_valid(waitq));
 waitq->waitq_isvalid = 0;
}
