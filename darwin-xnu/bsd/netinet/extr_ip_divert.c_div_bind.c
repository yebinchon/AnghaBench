
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct proc {int dummy; } ;
struct inpcb {int dummy; } ;


 scalar_t__ AF_INET ;
 int EAFNOSUPPORT ;
 int INADDR_ANY ;
 int in_pcbbind (struct inpcb*,struct sockaddr*,struct proc*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
div_bind(struct socket *so, struct sockaddr *nam, struct proc *p)
{
 struct inpcb *inp;
 int error;

 inp = sotoinpcb(so);







 if (nam->sa_family != AF_INET) {
  error = EAFNOSUPPORT;
 } else {
               ((struct sockaddr_in *)(void *)nam)->sin_addr.s_addr = INADDR_ANY;
  error = in_pcbbind(inp, nam, p);
 }
 return error;
}
