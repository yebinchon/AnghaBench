
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
 int flow_divert_control (struct socket*,int ,int ,struct ifnet*,struct proc*) ;
 int in6_control (struct socket*,int ,int ,struct ifnet*,struct proc*) ;

__attribute__((used)) static int
flow_divert_in6_control(struct socket *so, u_long cmd, caddr_t data, struct ifnet *ifp, struct proc *p)
{
 int error = flow_divert_control(so, cmd, data, ifp, p);

 if (error == EOPNOTSUPP) {
  error = in6_control(so, cmd, data, ifp, p);
 }

 return error;
}
