
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int snd_wnd; int max_sndwnd; int t_maxseg; } ;
struct socket {int so_flags1; int last_pid; } ;
struct inpcb {int necp_client_uuid; } ;


 int EHOSTUNREACH ;
 int IFSCOPE_NONE ;
 int SOF1_PRECONNECT_DATA ;
 int necp_client_assign_from_socket (int ,int ,struct inpcb*) ;
 int necp_socket_is_allowed_to_send_recv (struct inpcb*,int *,int *,int *) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 struct tcpcb* sototcpcb (struct socket*) ;
 int tcp_mss (struct tcpcb*,int,int ) ;
 int tcp_output (struct tcpcb*) ;
 int uuid_is_null (int ) ;

__attribute__((used)) static int
tcp_connect_complete(struct socket *so)
{
 struct tcpcb *tp = sototcpcb(so);
 struct inpcb *inp = sotoinpcb(so);
 int error = 0;


 if (so->so_flags1 & SOF1_PRECONNECT_DATA) {
  if (!necp_socket_is_allowed_to_send_recv(sotoinpcb(so), ((void*)0), ((void*)0), ((void*)0)))
   return (EHOSTUNREACH);


  tcp_mss(tp, -1, IFSCOPE_NONE);
  tp->snd_wnd = tp->t_maxseg;
  tp->max_sndwnd = tp->snd_wnd;
 } else {
  error = tcp_output(tp);
 }
 return (error);
}
