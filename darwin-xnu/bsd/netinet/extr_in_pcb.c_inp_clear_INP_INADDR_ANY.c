
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {int inp_flags; } ;


 int INP_INADDR_ANY ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 struct inpcb* sotoinpcb (struct socket*) ;

void
inp_clear_INP_INADDR_ANY(struct socket *so)
{
 struct inpcb *inp = ((void*)0);

 socket_lock(so, 1);
 inp = sotoinpcb(so);
 if (inp) {
  inp->inp_flags &= ~INP_INADDR_ANY;
 }
 socket_unlock(so, 1);
}
