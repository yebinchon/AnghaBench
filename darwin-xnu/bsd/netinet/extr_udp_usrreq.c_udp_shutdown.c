
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {int dummy; } ;


 int EINVAL ;
 int socantsendmore (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
udp_shutdown(struct socket *so)
{
 struct inpcb *inp;

 inp = sotoinpcb(so);
 if (inp == ((void*)0))
  return (EINVAL);
 socantsendmore(so);
 return (0);
}
