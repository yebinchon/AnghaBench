
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int unp_mtx; } ;
struct socket {int dummy; } ;


 int EINVAL ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_detach (struct unpcb*) ;

__attribute__((used)) static int
uipc_detach(struct socket *so)
{
 struct unpcb *unp = sotounpcb(so);

 if (unp == 0)
  return (EINVAL);

 LCK_MTX_ASSERT(&unp->unp_mtx, LCK_MTX_ASSERT_OWNED);
 unp_detach(unp);
 return (0);
}
