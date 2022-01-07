
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_pcb {int dummy; } ;
struct TYPE_2__ {struct tcp_pcb* tcp; } ;
struct netconn {TYPE_1__ pcb; } ;


 int err_tcp ;
 int poll_tcp ;
 int recv_tcp ;
 int sent_tcp ;
 int tcp_arg (struct tcp_pcb*,struct netconn*) ;
 int tcp_err (struct tcp_pcb*,int ) ;
 int tcp_poll (struct tcp_pcb*,int ,int) ;
 int tcp_recv (struct tcp_pcb*,int ) ;
 int tcp_sent (struct tcp_pcb*,int ) ;

__attribute__((used)) static void setuptcp(struct netconn *conn)
{
 struct tcp_pcb *pcb = conn->pcb.tcp;

 tcp_arg(pcb,conn);
 tcp_recv(pcb,recv_tcp);
 tcp_sent(pcb,sent_tcp);
 tcp_poll(pcb,poll_tcp,4);
 tcp_err(pcb,err_tcp);
}
