
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int soconnectlock (struct socket*,struct sockaddr*,int) ;

int
soconnect(struct socket *so, struct sockaddr *nam)
{
 return (soconnectlock(so, nam, 1));
}
