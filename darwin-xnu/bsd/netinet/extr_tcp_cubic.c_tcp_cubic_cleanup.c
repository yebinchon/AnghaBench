
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {int dummy; } ;
struct TYPE_2__ {int num_sockets; } ;
typedef int SInt32 ;


 int OSDecrementAtomic (int volatile*) ;
 TYPE_1__ tcp_cc_cubic ;

__attribute__((used)) static int tcp_cubic_cleanup(struct tcpcb *tp)
{
#pragma unused(tp)
 OSDecrementAtomic((volatile SInt32 *)&tcp_cc_cubic.num_sockets);
 return (0);
}
