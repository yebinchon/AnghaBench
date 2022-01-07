
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int unp_flags; int unp_mtx; struct unpcb* unp_conn; int unp_peercred; int unp_refs; } ;
struct socket {int so_type; scalar_t__ so_usecount; } ;


 int EINVAL ;
 int EPROTOTYPE ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LIST_INSERT_HEAD (int *,struct unpcb*,int ) ;


 int UNP_HAVEPC ;
 int VERIFY (int) ;
 int cru2x (int ,int *) ;
 int kauth_cred_get () ;
 int panic (char*,int) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int soisconnected (struct socket*) ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_get_locks_in_order (struct socket*,struct socket*) ;
 int unp_reflink ;

int
unp_connect2(struct socket *so, struct socket *so2)
{
 struct unpcb *unp = sotounpcb(so);
 struct unpcb *unp2;

 if (so2->so_type != so->so_type)
  return (EPROTOTYPE);

 unp2 = sotounpcb(so2);

 LCK_MTX_ASSERT(&unp->unp_mtx, LCK_MTX_ASSERT_OWNED);
 LCK_MTX_ASSERT(&unp2->unp_mtx, LCK_MTX_ASSERT_OWNED);


 if (unp == 0 || unp2 == 0)
  return (EINVAL);

 unp->unp_conn = unp2;
 so2->so_usecount++;

 switch (so->so_type) {

 case 129:
  LIST_INSERT_HEAD(&unp2->unp_refs, unp, unp_reflink);

  if (so != so2) {




   socket_unlock(so2, 0);
   soisconnected(so);
   unp_get_locks_in_order(so, so2);
   VERIFY(so2->so_usecount > 0);
   so2->so_usecount--;
  } else {
   soisconnected(so);
  }

  break;

 case 128:

  if (!(unp->unp_flags & UNP_HAVEPC) &&
      !(unp2->unp_flags & UNP_HAVEPC)) {
   cru2x(kauth_cred_get(), &unp->unp_peercred);
   unp->unp_flags |= UNP_HAVEPC;

   cru2x(kauth_cred_get(), &unp2->unp_peercred);
   unp2->unp_flags |= UNP_HAVEPC;
  }
  unp2->unp_conn = unp;
  so->so_usecount++;


  socket_unlock(so, 0);
  soisconnected(so2);




  socket_unlock(so2, 0);

  socket_lock(so, 0);
  soisconnected(so);

  unp_get_locks_in_order(so, so2);

  VERIFY(so2->so_usecount > 0);
  so2->so_usecount--;
  break;

 default:
  panic("unknown socket type %d in unp_connect2", so->so_type);
 }
 LCK_MTX_ASSERT(&unp->unp_mtx, LCK_MTX_ASSERT_OWNED);
 LCK_MTX_ASSERT(&unp2->unp_mtx, LCK_MTX_ASSERT_OWNED);
 return (0);
}
