
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct socket {int dummy; } ;
struct proc {int dummy; } ;
typedef int caddr_t ;


 int ifioctl (struct socket*,int ,int ,struct proc*) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;

int
ifioctllocked(struct socket *so, u_long cmd, caddr_t data, struct proc *p)
{
 int error;

 socket_unlock(so, 0);
 error = ifioctl(so, cmd, data, p);
 socket_lock(so, 0);
 return (error);
}
