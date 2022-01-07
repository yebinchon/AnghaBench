
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_2__ {int (* pru_bind ) (struct socket*,struct sockaddr*,struct proc*) ;} ;


 TYPE_1__ raw_usrreqs ;
 int stub1 (struct socket*,struct sockaddr*,struct proc*) ;

__attribute__((used)) static int
rts_bind(struct socket *so, struct sockaddr *nam, struct proc *p)
{
 return (raw_usrreqs.pru_bind(so, nam, p));
}
