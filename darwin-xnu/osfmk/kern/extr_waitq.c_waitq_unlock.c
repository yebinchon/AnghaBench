
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;


 int TRUE ;
 int assert (int ) ;
 int pltrace (int ) ;
 int waitq_held (struct waitq*) ;
 int waitq_lock_unlock (struct waitq*) ;

void waitq_unlock(struct waitq *wq)
{
 assert(waitq_held(wq));

 pltrace(TRUE);

 waitq_lock_unlock(wq);
}
