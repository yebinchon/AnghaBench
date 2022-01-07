
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int dummy; } ;
struct socket {int dummy; } ;


 int EINVAL ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_disconnect (struct unpcb*) ;

__attribute__((used)) static int
uipc_disconnect(struct socket *so)
{
 struct unpcb *unp = sotounpcb(so);

 if (unp == 0)
  return (EINVAL);
 unp_disconnect(unp);
 return (0);
}
