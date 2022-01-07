
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct conninfo_tcp {int tcpci_tcp_info; int tcpci_peer_pid; } ;


 int sototcpcb (struct socket*) ;
 int tcp_fill_info (int ,int *) ;
 int tcp_lookup_peer_pid_locked (struct socket*,int *) ;

void
tcp_getconninfo(struct socket *so, struct conninfo_tcp *tcp_ci)
{
 (void) tcp_lookup_peer_pid_locked(so, &tcp_ci->tcpci_peer_pid);
 tcp_fill_info(sototcpcb(so), &tcp_ci->tcpci_tcp_info);
}
