
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_2__ {int (* pru_send ) (struct socket*,int,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ;} ;


 TYPE_1__ raw_usrreqs ;
 int stub1 (struct socket*,int,struct mbuf*,struct sockaddr*,struct mbuf*,struct proc*) ;

__attribute__((used)) static int
rts_send(struct socket *so, int flags, struct mbuf *m, struct sockaddr *nam,
    struct mbuf *control, struct proc *p)
{
 return (raw_usrreqs.pru_send(so, flags, m, nam, control, p));
}
