
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {scalar_t__ rw_thrcount; int unp_flags; } ;
struct socket {int dummy; } ;


 int UNP_DONTDISCONNECT ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int ) ;
 struct unpcb* sotounpcb (struct socket*) ;
 int wakeup (struct unpcb*) ;

__attribute__((used)) static void
unp_get_locks_in_order(struct socket *so, struct socket *conn_so)
{
 if (so < conn_so) {
  socket_lock(conn_so, 1);
 } else {
  struct unpcb *unp = sotounpcb(so);
  unp->unp_flags |= UNP_DONTDISCONNECT;
  unp->rw_thrcount++;
  socket_unlock(so, 0);


  socket_lock(conn_so, 1);
  socket_lock(so, 0);
  unp->rw_thrcount--;
  if (unp->rw_thrcount == 0) {
   unp->unp_flags &= ~UNP_DONTDISCONNECT;
   wakeup(unp);
  }
 }
}
