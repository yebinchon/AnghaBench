
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int sodisconnectlocked (struct socket*) ;

int
sodisconnect(struct socket *so)
{
 int error;

 socket_lock(so, 1);
 error = sodisconnectlocked(so);
 socket_unlock(so, 1);
 return (error);
}
