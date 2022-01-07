
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr_in {int sin_len; int sin_addr; int sin_port; int sin_family; } ;
struct inpcb {int inp_laddr; int inp_lport; } ;


 int AF_INET ;
 int EINVAL ;
 int VERIFY (int ) ;
 int bzero (struct sockaddr_in*,int) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
in_getsockaddr_s(struct socket *so, struct sockaddr_in *ss)
{
 struct sockaddr_in *sin = ss;
 struct inpcb *inp;

 VERIFY(ss != ((void*)0));
 bzero(ss, sizeof (*ss));

 sin->sin_family = AF_INET;
 sin->sin_len = sizeof (*sin);

 if ((inp = sotoinpcb(so)) == ((void*)0))
  return (EINVAL);

 sin->sin_port = inp->inp_lport;
 sin->sin_addr = inp->inp_laddr;
 return (0);
}
