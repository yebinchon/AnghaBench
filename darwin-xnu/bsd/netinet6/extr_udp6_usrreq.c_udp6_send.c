
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ so_cfil_db; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr {int sa_len; scalar_t__ sa_family; } ;
struct proc {int dummy; } ;
struct pr_usrreqs {int (* pru_send ) (struct socket*,int,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ;} ;
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct inpcb {int inp_flags; int inp_vflag; int in6p_faddr; } ;
struct TYPE_2__ {struct pr_usrreqs* pr_usrreqs; } ;


 scalar_t__ AF_INET6 ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int IN6P_IPV6_V6ONLY ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (int *) ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (int *) ;
 int INP_IPV4 ;
 size_t IPPROTO_UDP ;
 int VERIFY (int) ;
 struct m_tag* cfil_udp_get_socket_state (struct mbuf*,int *,int *,struct sockaddr**) ;
 int flow_divert_implicit_data_out (struct socket*,int,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ;
 int in6_sin6_2_sin_in_sock (struct sockaddr*) ;
 scalar_t__ ip6_mapped_addr_on ;
 TYPE_1__** ip_protox ;
 int m_freem (struct mbuf*) ;
 int m_tag_free (struct m_tag*) ;
 int necp_socket_should_use_flow_divert (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int stub1 (struct socket*,int,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ;
 int udp6_output (struct inpcb*,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ;

__attribute__((used)) static int
udp6_send(struct socket *so, int flags, struct mbuf *m, struct sockaddr *addr,
    struct mbuf *control, struct proc *p)
{
 struct inpcb *inp;
 int error = 0;
 inp = sotoinpcb(so);
 if (inp == ((void*)0)) {
  error = EINVAL;
  goto bad;
 }
 if (addr != ((void*)0)) {
  if (addr->sa_len != sizeof (struct sockaddr_in6)) {
   error = EINVAL;
   goto bad;
  }
  if (addr->sa_family != AF_INET6) {
   error = EAFNOSUPPORT;
   goto bad;
  }
 }

 if (ip6_mapped_addr_on || (inp->inp_flags & IN6P_IPV6_V6ONLY) == 0) {
  int hasv4addr;
  struct sockaddr_in6 *sin6 = ((void*)0);

  if (addr == ((void*)0)) {
   hasv4addr = (inp->inp_vflag & INP_IPV4);
  } else {
   sin6 = (struct sockaddr_in6 *)(void *)addr;
   hasv4addr =
       IN6_IS_ADDR_V4MAPPED(&sin6->sin6_addr) ? 1 : 0;
  }
  if (hasv4addr) {
   struct pr_usrreqs *pru;

   if (sin6 != ((void*)0))
    in6_sin6_2_sin_in_sock(addr);





   pru = ip_protox[IPPROTO_UDP]->pr_usrreqs;
   error = ((*pru->pru_send)(so, flags, m, addr,
       control, p));





   return (error);
  }
 }
 error = udp6_output(inp, m, addr, control, p);




 return error;

bad:
 VERIFY(error != 0);

 if (m != ((void*)0))
  m_freem(m);
 if (control != ((void*)0))
  m_freem(control);




 return (error);
}
