
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int soacceptlock (struct socket*,struct sockaddr**,int) ;

int
soaccept(struct socket *so, struct sockaddr **nam)
{
 return (soacceptlock(so, nam, 1));
}
