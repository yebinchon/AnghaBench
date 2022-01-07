
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct socket {int dummy; } ;
struct proc {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int caddr_t ;


 int EOPNOTSUPP ;

int
pru_control_notsupp(struct socket *so, u_long cmd, caddr_t data,
    struct ifnet *ifp, struct proc *p)
{
#pragma unused(so, cmd, data, ifp, p)
 return (EOPNOTSUPP);
}
