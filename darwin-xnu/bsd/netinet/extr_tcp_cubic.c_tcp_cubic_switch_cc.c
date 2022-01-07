
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct tcpcb {int dummy; } ;
struct TYPE_2__ {int num_sockets; } ;
typedef int SInt32 ;


 int OSIncrementAtomic (int volatile*) ;
 TYPE_1__ tcp_cc_cubic ;
 int tcp_cubic_cwnd_init_or_reset (struct tcpcb*) ;

__attribute__((used)) static void
tcp_cubic_switch_cc(struct tcpcb *tp, uint16_t old_cc_index)
{
#pragma unused(old_cc_index)
 tcp_cubic_cwnd_init_or_reset(tp);

 OSIncrementAtomic((volatile SInt32 *)&tcp_cc_cubic.num_sockets);
}
