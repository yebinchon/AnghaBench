
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;


 int assert (int) ;
 struct waitq* global_eventq (struct waitq*) ;
 struct waitq* ipc_port_rcv_turnstile_waitq (struct waitq*) ;
 int waitq_irq_safe (struct waitq*) ;
 scalar_t__ waitq_is_port_queue (struct waitq*) ;

struct waitq * waitq_get_safeq(struct waitq *waitq)
{
 struct waitq *safeq;


 if (waitq_is_port_queue(waitq)) {
  assert(!waitq_irq_safe(waitq));
  safeq = ipc_port_rcv_turnstile_waitq(waitq);
 } else {
  safeq = global_eventq(waitq);
 }
 return safeq;
}
