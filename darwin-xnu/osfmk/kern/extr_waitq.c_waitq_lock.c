
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ __improbable (int) ;
 int assert (int ) ;
 int cpu_number () ;
 int hwLockTimeOut ;
 scalar_t__ machine_timeout_suspended () ;
 int mp_enable_preemption () ;
 int panic (char*,struct waitq*,int ) ;
 int pltrace (scalar_t__) ;
 int waitq_held (struct waitq*) ;
 scalar_t__ waitq_lock_to (struct waitq*,int) ;

void waitq_lock(struct waitq *wq)
{
 if (__improbable(waitq_lock_to(wq,
        hwLockTimeOut * 2) == 0)) {
  boolean_t wql_acquired = FALSE;

  while (machine_timeout_suspended()) {
   mp_enable_preemption();
   wql_acquired = waitq_lock_to(wq,
        hwLockTimeOut * 2);
   if (wql_acquired)
    break;
  }
  if (wql_acquired == FALSE)
   panic("waitq deadlock - waitq=%p, cpu=%d\n",
         wq, cpu_number());
 }

 pltrace(FALSE);

 assert(waitq_held(wq));
}
