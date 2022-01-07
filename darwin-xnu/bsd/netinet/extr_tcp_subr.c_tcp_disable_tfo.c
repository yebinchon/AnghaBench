
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_flagsext; } ;


 int TF_FASTOPEN ;

void
tcp_disable_tfo(struct tcpcb *tp)
{
 tp->t_flagsext &= ~TF_FASTOPEN;
}
