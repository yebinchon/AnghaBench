
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpcb {TYPE_1__* unp_conn; struct socket* unp_socket; } ;
struct socket {scalar_t__ so_type; } ;
struct TYPE_2__ {struct socket* unp_socket; } ;


 scalar_t__ SOCK_STREAM ;
 int socantrcvmore (struct socket*) ;
 int socket_unlock (struct socket*,int) ;
 int unp_get_locks_in_order (struct socket*,struct socket*) ;

__attribute__((used)) static void
unp_shutdown(struct unpcb *unp)
{
 struct socket *so = unp->unp_socket;
 struct socket *so2;
 if (unp->unp_socket->so_type == SOCK_STREAM && unp->unp_conn) {
  so2 = unp->unp_conn->unp_socket;
  unp_get_locks_in_order(so, so2);
  socantrcvmore(so2);
  socket_unlock(so2, 1);
 }
}
