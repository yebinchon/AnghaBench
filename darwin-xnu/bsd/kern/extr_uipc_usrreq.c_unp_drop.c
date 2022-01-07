
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {struct socket* unp_socket; } ;
struct socket {int so_error; } ;


 int unp_disconnect (struct unpcb*) ;

__attribute__((used)) static void
unp_drop(struct unpcb *unp, int errno)
{
 struct socket *so = unp->unp_socket;

 so->so_error = errno;
 unp_disconnect(unp);
}
