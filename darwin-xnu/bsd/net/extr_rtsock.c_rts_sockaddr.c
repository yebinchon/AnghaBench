
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;} ;


 TYPE_1__ raw_usrreqs ;
 int stub1 (struct socket*,struct sockaddr**) ;

__attribute__((used)) static int
rts_sockaddr(struct socket *so, struct sockaddr **nam)
{
 return (raw_usrreqs.pru_sockaddr(so, nam));
}
