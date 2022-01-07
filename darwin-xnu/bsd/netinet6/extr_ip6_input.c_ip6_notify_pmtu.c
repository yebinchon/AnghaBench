
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct socket {int so_rcv; TYPE_1__* so_proto; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct mbuf {int dummy; } ;
struct ip6_mtuinfo {struct sockaddr_in6 ip6m_addr; int ip6m_mtu; } ;
struct inpcb {int inp_flags; int in6p_faddr; struct socket* inp_socket; } ;
typedef int mtuctl ;
typedef int caddr_t ;
struct TYPE_2__ {scalar_t__ pr_protocol; } ;


 int IN6P_MTU ;
 int IN6_ARE_ADDR_EQUAL (int *,int *) ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int IPPROTO_IPV6 ;
 scalar_t__ IPPROTO_TCP ;
 int IPV6_PATHMTU ;
 int SA (struct sockaddr_in6*) ;
 int TRUE ;
 int bzero (struct ip6_mtuinfo*,int) ;
 int m_freem (struct mbuf*) ;
 int panic (char*) ;
 scalar_t__ sa6_recoverscope (struct sockaddr_in6*,int ) ;
 scalar_t__ sbappendaddr (int *,int ,int *,struct mbuf*,int *) ;
 struct mbuf* sbcreatecontrol (int ,int,int ,int ) ;
 int sorwakeup (struct socket*) ;

void
ip6_notify_pmtu(struct inpcb *in6p, struct sockaddr_in6 *dst, u_int32_t *mtu)
{
 struct socket *so;
 struct mbuf *m_mtu;
 struct ip6_mtuinfo mtuctl;

 so = in6p->inp_socket;

 if ((in6p->inp_flags & IN6P_MTU) == 0)
  return;

 if (mtu == ((void*)0))
  return;
 if (IN6_IS_ADDR_UNSPECIFIED(&in6p->in6p_faddr) &&
     (so->so_proto == ((void*)0) || so->so_proto->pr_protocol == IPPROTO_TCP))
  return;

 if (!IN6_IS_ADDR_UNSPECIFIED(&in6p->in6p_faddr) &&
     !IN6_ARE_ADDR_EQUAL(&in6p->in6p_faddr, &dst->sin6_addr))
  return;

 bzero(&mtuctl, sizeof (mtuctl));
 mtuctl.ip6m_mtu = *mtu;
 mtuctl.ip6m_addr = *dst;
 if (sa6_recoverscope(&mtuctl.ip6m_addr, TRUE))
  return;

 if ((m_mtu = sbcreatecontrol((caddr_t)&mtuctl, sizeof (mtuctl),
     IPV6_PATHMTU, IPPROTO_IPV6)) == ((void*)0))
  return;

 if (sbappendaddr(&so->so_rcv, SA(dst), ((void*)0), m_mtu, ((void*)0)) == 0) {
  m_freem(m_mtu);

 } else {
  sorwakeup(so);
 }
}
