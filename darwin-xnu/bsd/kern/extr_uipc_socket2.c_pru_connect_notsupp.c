
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;


 int EOPNOTSUPP ;

int
pru_connect_notsupp(struct socket *so, struct sockaddr *nam, struct proc *p)
{
#pragma unused(so, nam, p)
 return (EOPNOTSUPP);
}
