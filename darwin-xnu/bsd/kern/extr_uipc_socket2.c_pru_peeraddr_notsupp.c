
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int EOPNOTSUPP ;

int
pru_peeraddr_notsupp(struct socket *so, struct sockaddr **nam)
{
#pragma unused(so, nam)
 return (EOPNOTSUPP);
}
