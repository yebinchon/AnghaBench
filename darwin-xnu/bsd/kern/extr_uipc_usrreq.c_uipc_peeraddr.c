
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpcb {TYPE_1__* unp_conn; } ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int * unp_addr; } ;


 int EINVAL ;
 struct sockaddr* dup_sockaddr (struct sockaddr*,int) ;
 struct unpcb* sotounpcb (struct socket*) ;
 int sun_noname ;

__attribute__((used)) static int
uipc_peeraddr(struct socket *so, struct sockaddr **nam)
{
 struct unpcb *unp = sotounpcb(so);

 if (unp == ((void*)0))
  return (EINVAL);
 if (unp->unp_conn != ((void*)0) && unp->unp_conn->unp_addr != ((void*)0)) {
  *nam = dup_sockaddr((struct sockaddr *)
      unp->unp_conn->unp_addr, 1);
 } else {
  *nam = dup_sockaddr((struct sockaddr *)&sun_noname, 1);
 }
 return (0);
}
