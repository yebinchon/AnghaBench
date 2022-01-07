
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct proc {int dummy; } ;


 int EOPNOTSUPP ;

int
pru_attach_notsupp(struct socket *so, int proto, struct proc *p)
{
#pragma unused(so, proto, p)
 return (EOPNOTSUPP);
}
