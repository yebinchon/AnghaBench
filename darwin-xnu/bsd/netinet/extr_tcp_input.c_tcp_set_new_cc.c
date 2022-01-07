
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef scalar_t__ u_char ;
struct tcpcb {scalar_t__ tcp_cc_index; } ;
struct socket {int dummy; } ;
struct inpcb {int dummy; } ;
struct TYPE_2__ {int (* switch_to ) (struct tcpcb*,scalar_t__) ;int (* cleanup ) (struct tcpcb*) ;} ;


 TYPE_1__* CC_ALGO (struct tcpcb*) ;
 int TCP_CC_CHANGE_ALGO ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int stub1 (struct tcpcb*) ;
 int stub2 (struct tcpcb*,scalar_t__) ;
 int tcp_cc_allocate_state (struct tcpcb*) ;
 int tcp_ccdbg_trace (struct tcpcb*,int *,int ) ;

__attribute__((used)) static void
tcp_set_new_cc(struct socket *so, uint16_t cc_index)
{
 struct inpcb *inp = sotoinpcb(so);
 struct tcpcb *tp = intotcpcb(inp);
 u_char old_cc_index = 0;
 if (tp->tcp_cc_index != cc_index) {

  old_cc_index = tp->tcp_cc_index;

  if (CC_ALGO(tp)->cleanup != ((void*)0))
   CC_ALGO(tp)->cleanup(tp);
  tp->tcp_cc_index = cc_index;

  tcp_cc_allocate_state(tp);

  if (CC_ALGO(tp)->switch_to != ((void*)0))
   CC_ALGO(tp)->switch_to(tp, old_cc_index);

  tcp_ccdbg_trace(tp, ((void*)0), TCP_CC_CHANGE_ALGO);
 }
}
