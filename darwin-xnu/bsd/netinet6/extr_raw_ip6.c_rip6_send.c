
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct socket {int so_state; } ;
struct sockaddr_in6 {int sin6_len; scalar_t__ sin6_scope_id; int sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct mbuf {int dummy; } ;
struct inpcb {int in6p_faddr; } ;
struct in6_addr {int dummy; } ;


 int AF_INET6 ;
 int EINVAL ;
 int EISCONN ;
 int ENOTCONN ;
 int EPROTOTYPE ;
 int SS_ISCONNECTED ;
 int VERIFY (int) ;
 int bcopy (int *,int *,int) ;
 int bzero (struct sockaddr_in6*,int) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ necp_socket_should_use_flow_divert (struct inpcb*) ;
 int rip6_output (struct mbuf*,struct socket*,struct sockaddr_in6*,struct mbuf*,int) ;
 scalar_t__ scope6_addr2default (int *) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
rip6_send(struct socket *so, int flags, struct mbuf *m, struct sockaddr *nam,
    struct mbuf *control, struct proc *p)
{
#pragma unused(flags, p)
 struct inpcb *inp = sotoinpcb(so);
 struct sockaddr_in6 tmp;
 struct sockaddr_in6 *dst = (struct sockaddr_in6 *)(void *)nam;
 int error = 0;

 if (inp == ((void*)0)



  ) {
  if (inp == ((void*)0))
   error = EINVAL;
  else
   error = EPROTOTYPE;
  goto bad;
 }


 if (so->so_state & SS_ISCONNECTED) {
  if (nam != ((void*)0)) {
   error = EISCONN;
   goto bad;
  }

  bzero(&tmp, sizeof(tmp));
  tmp.sin6_family = AF_INET6;
  tmp.sin6_len = sizeof(struct sockaddr_in6);
  bcopy(&inp->in6p_faddr, &tmp.sin6_addr,
        sizeof(struct in6_addr));
  dst = &tmp;
 } else {
  if (nam == ((void*)0)) {
   error = ENOTCONN;
   goto bad;
  }
  tmp = *(struct sockaddr_in6 *)(void *)nam;
  dst = &tmp;
 }





 return (rip6_output(m, so, dst, control, 1));

bad:
 VERIFY(error != 0);

 if (m != ((void*)0))
  m_freem(m);
 if (control != ((void*)0))
  m_freem(control);

 return (error);
}
