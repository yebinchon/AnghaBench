
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct inpcb {int inp_vflag; } ;


 int EINVAL ;
 int INP_IPV4 ;
 int in6_getsockaddr (struct socket*,struct sockaddr**) ;
 int in6_sin_2_v4mapsin6_in_sock (struct sockaddr**) ;
 int in_getsockaddr (struct socket*,struct sockaddr**) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
in6_mapped_sockaddr(struct socket *so, struct sockaddr **nam)
{
 struct inpcb *inp = sotoinpcb(so);
 int error;

 if (inp == ((void*)0))
  return (EINVAL);
 if (inp->inp_vflag & INP_IPV4) {
  error = in_getsockaddr(so, nam);
  if (error == 0)
   error = in6_sin_2_v4mapsin6_in_sock(nam);
 } else {

  error = in6_getsockaddr(so, nam);
 }
 return (error);
}
