
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {int * t_ccstate; } ;
struct TYPE_2__ {int num_sockets; } ;
typedef int SInt32 ;


 int OSIncrementAtomic (int volatile*) ;
 int VERIFY (int ) ;
 TYPE_1__ tcp_cc_cubic ;
 int tcp_cubic_clear_state (struct tcpcb*) ;

__attribute__((used)) static int tcp_cubic_init(struct tcpcb *tp)
{
 OSIncrementAtomic((volatile SInt32 *)&tcp_cc_cubic.num_sockets);

 VERIFY(tp->t_ccstate != ((void*)0));
 tcp_cubic_clear_state(tp);
 return (0);
}
