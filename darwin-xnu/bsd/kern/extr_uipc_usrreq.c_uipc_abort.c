
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int dummy; } ;
struct socket {int dummy; } ;


 int ECONNABORTED ;
 int EINVAL ;
 int sofree (struct socket*) ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_detach (struct unpcb*) ;
 int unp_drop (struct unpcb*,int ) ;

__attribute__((used)) static int
uipc_abort(struct socket *so)
{
 struct unpcb *unp = sotounpcb(so);

 if (unp == 0)
  return (EINVAL);
 unp_drop(unp, ECONNABORTED);
 unp_detach(unp);
 sofree(so);
 return (0);
}
