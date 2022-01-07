
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_restrictions; } ;
struct inpcb {int inp_route; int inp_flags; struct socket* inp_socket; } ;


 int INP_NO_IFT_CELLULAR ;
 int ROUTE_RELEASE (int *) ;
 int SO_RESTRICT_DENY_CELLULAR ;

void
inp_clear_nocellular(struct inpcb *inp)
{
 struct socket *so = inp->inp_socket;






 if (so != ((void*)0) && !(so->so_restrictions & SO_RESTRICT_DENY_CELLULAR)) {
  inp->inp_flags &= ~INP_NO_IFT_CELLULAR;


  ROUTE_RELEASE(&inp->inp_route);
 }
}
