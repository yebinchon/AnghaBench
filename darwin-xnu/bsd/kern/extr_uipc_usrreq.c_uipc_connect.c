
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int dummy; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int proc_t ;


 int EINVAL ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_connect (struct socket*,struct sockaddr*,int ) ;

__attribute__((used)) static int
uipc_connect(struct socket *so, struct sockaddr *nam, proc_t p)
{
 struct unpcb *unp = sotounpcb(so);

 if (unp == 0)
  return (EINVAL);
 return (unp_connect(so, nam, p));
}
