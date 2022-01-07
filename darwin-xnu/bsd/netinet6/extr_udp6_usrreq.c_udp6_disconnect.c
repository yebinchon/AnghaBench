
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int so_state; } ;
struct pr_usrreqs {int (* pru_disconnect ) (struct socket*) ;} ;
struct inpcb {int inp_vflag; int * in6p_last_outifp; int in6p_laddr; int in6p_faddr; } ;
struct TYPE_2__ {struct pr_usrreqs* pr_usrreqs; } ;


 int EINVAL ;
 int ENOTCONN ;
 int EPROTOTYPE ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INP_IPV4 ;
 size_t IPPROTO_UDP ;
 int SS_ISCONNECTED ;
 int in6_pcbdisconnect (struct inpcb*) ;
 int in6addr_any ;
 int inp_reset_fc_state (struct inpcb*) ;
 TYPE_1__** ip_protox ;
 scalar_t__ necp_socket_should_use_flow_divert (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int stub1 (struct socket*) ;

__attribute__((used)) static int
udp6_disconnect(struct socket *so)
{
 struct inpcb *inp;

 inp = sotoinpcb(so);
 if (inp == ((void*)0)



  )
  return (inp == ((void*)0) ? EINVAL : EPROTOTYPE);

 if (inp->inp_vflag & INP_IPV4) {
  struct pr_usrreqs *pru;

  pru = ip_protox[IPPROTO_UDP]->pr_usrreqs;
  return ((*pru->pru_disconnect)(so));
 }

 if (IN6_IS_ADDR_UNSPECIFIED(&inp->in6p_faddr))
  return (ENOTCONN);

 in6_pcbdisconnect(inp);


 inp_reset_fc_state(inp);

 inp->in6p_laddr = in6addr_any;
 inp->in6p_last_outifp = ((void*)0);

 so->so_state &= ~SS_ISCONNECTED;
 return (0);
}
