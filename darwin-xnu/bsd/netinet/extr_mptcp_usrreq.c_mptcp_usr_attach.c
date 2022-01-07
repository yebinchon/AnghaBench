
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_options; int so_linger; } ;
struct proc {int dummy; } ;


 int SO_LINGER ;
 int TCP_LINGERTIME ;
 int VERIFY (int ) ;
 int hz ;
 int * mpsotomppcb (struct socket*) ;
 int mptcp_attach (struct socket*,struct proc*) ;

__attribute__((used)) static int
mptcp_usr_attach(struct socket *mp_so, int proto, struct proc *p)
{
#pragma unused(proto)
 int error;

 VERIFY(mpsotomppcb(mp_so) == ((void*)0));

 error = mptcp_attach(mp_so, p);
 if (error != 0)
  goto out;





 if ((mp_so->so_options & SO_LINGER) && mp_so->so_linger == 0)
  mp_so->so_linger = TCP_LINGERTIME * hz;
out:
 return (error);
}
