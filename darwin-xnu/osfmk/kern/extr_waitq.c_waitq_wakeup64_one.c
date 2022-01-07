
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;
typedef int uint64_t ;
struct waitq {int dummy; } ;
typedef int spl_t ;
typedef int kern_return_t ;
typedef int event64_t ;


 int WAITQ_KEEP_LOCKED ;
 int WAITQ_UNLOCK ;
 int panic (char*,struct waitq*) ;
 int splsched () ;
 int splx (int ) ;
 scalar_t__ waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_prepost_release_reserve (int ) ;
 int waitq_prepost_reserve (struct waitq*,int ,int ) ;
 int waitq_valid (struct waitq*) ;
 int waitq_wakeup64_one_locked (struct waitq*,int ,int ,int *,int,int ) ;

kern_return_t waitq_wakeup64_one(struct waitq *waitq, event64_t wake_event,
     wait_result_t result, int priority)
{
 kern_return_t kr;
 uint64_t reserved_preposts = 0;
 spl_t spl;

 if (!waitq_valid(waitq))
  panic("Invalid waitq: %p", waitq);

 if (!waitq_irq_safe(waitq)) {

  reserved_preposts = waitq_prepost_reserve(waitq, 0, WAITQ_KEEP_LOCKED);
 } else {
  spl = splsched();
  waitq_lock(waitq);
 }


 kr = waitq_wakeup64_one_locked(waitq, wake_event, result,
           &reserved_preposts, priority, WAITQ_UNLOCK);

 if (waitq_irq_safe(waitq))
  splx(spl);


 waitq_prepost_release_reserve(reserved_preposts);

 return kr;
}
