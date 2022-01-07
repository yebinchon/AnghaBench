
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {int dummy; } ;
struct TYPE_2__ {int num_sockets; } ;
typedef int SInt32 ;


 int OSIncrementAtomic (int volatile*) ;
 TYPE_1__ tcp_cc_ledbat ;

int tcp_ledbat_init(struct tcpcb *tp) {
#pragma unused(tp)
 OSIncrementAtomic((volatile SInt32 *)&tcp_cc_ledbat.num_sockets);
 return 0;
}
