
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int dummy; } ;
struct turnstile {struct waitq ts_waitq; } ;
typedef int ipc_port_t ;
typedef int ipc_mqueue_t ;


 struct turnstile* TURNSTILE_NULL ;
 struct waitq* global_eventq (struct waitq*) ;
 int imq_from_waitq (struct waitq*) ;
 int ip_from_mq (int ) ;
 struct turnstile* ipc_port_rcv_turnstile (int ) ;

struct waitq *
ipc_port_rcv_turnstile_waitq(struct waitq *waitq)
{
 struct waitq *safeq;

 ipc_mqueue_t mqueue = imq_from_waitq(waitq);
 ipc_port_t port = ip_from_mq(mqueue);
 struct turnstile *rcv_turnstile = ipc_port_rcv_turnstile(port);


 if (rcv_turnstile != TURNSTILE_NULL) {
  safeq = &rcv_turnstile->ts_waitq;
 } else {
  safeq = global_eventq(waitq);
 }
 return safeq;
}
