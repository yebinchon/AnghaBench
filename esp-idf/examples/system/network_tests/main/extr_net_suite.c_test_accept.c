
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_pcb {int dummy; } ;
typedef void* err_t ;


 void* ERR_OK ;
 int LWIP_UNUSED_ARG (void*) ;
 int TCP_PRIO_MIN ;
 int tcp_arg (struct tcp_pcb*,int *) ;
 int tcp_err (struct tcp_pcb*,int ) ;
 int tcp_poll (struct tcp_pcb*,int ,int ) ;
 int tcp_recv (struct tcp_pcb*,int ) ;
 int tcp_setprio (struct tcp_pcb*,int ) ;
 int test_error ;
 int test_poll ;
 int test_recv ;

err_t test_accept(void *arg, struct tcp_pcb *newpcb, err_t err)
{
    LWIP_UNUSED_ARG(arg);
    LWIP_UNUSED_ARG(err);

    tcp_setprio(newpcb, TCP_PRIO_MIN);
    tcp_arg(newpcb, ((void*)0));
    tcp_recv(newpcb, test_recv);
    tcp_err(newpcb, test_error);
    tcp_poll(newpcb, test_poll, 0);

    return ERR_OK;
}
