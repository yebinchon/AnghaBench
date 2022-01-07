
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int last_pid; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct proc {int dummy; } ;
struct inpcb {int inp_flags2; int necp_client_uuid; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int INP2_CONNECT_IN_PROGRESS ;
 int in_pcbbind (struct inpcb*,struct sockaddr*,struct proc*) ;
 int necp_client_assign_from_socket (int ,int ,struct inpcb*) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int uuid_is_null (int ) ;

int
udp_bind(struct socket *so, struct sockaddr *nam, struct proc *p)
{
 struct inpcb *inp;
 int error;

 if (nam->sa_family != 0 && nam->sa_family != AF_INET &&
     nam->sa_family != AF_INET6)
  return (EAFNOSUPPORT);

 inp = sotoinpcb(so);
 if (inp == ((void*)0))
  return (EINVAL);
 error = in_pcbbind(inp, nam, p);
 return (error);
}
