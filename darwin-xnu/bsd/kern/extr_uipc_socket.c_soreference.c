
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int ) ;

void
soreference(struct socket *so)
{
 socket_lock(so, 1);
 socket_unlock(so, 0);
}
