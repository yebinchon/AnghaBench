
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {struct in6_addr sin6_addr; int sin6_port; } ;
struct TYPE_3__ {struct in6_addr sin6_addr; int sin6_port; } ;
struct mptses {TYPE_2__ __mpte_dst_v6; TYPE_1__ __mpte_src_v6; } ;
typedef int in_port_t ;
typedef int boolean_t ;


 int ENOBUFS ;
 struct sockaddr* in6_sockaddr (int ,struct in6_addr*) ;
 struct mptses* mpsotompte (struct socket*) ;

__attribute__((used)) static int
mp_getaddr_v6(struct socket *mp_so, struct sockaddr **nam, boolean_t peer)
{
 struct mptses *mpte = mpsotompte(mp_so);
 struct in6_addr addr;
 in_port_t port;

 if (!peer) {
  port = mpte->__mpte_src_v6.sin6_port;
  addr = mpte->__mpte_src_v6.sin6_addr;
 } else {
  port = mpte->__mpte_dst_v6.sin6_port;
  addr = mpte->__mpte_dst_v6.sin6_addr;
 }

 *nam = in6_sockaddr(port, &addr);
 if (*nam == ((void*)0))
  return (ENOBUFS);

 return (0);
}
