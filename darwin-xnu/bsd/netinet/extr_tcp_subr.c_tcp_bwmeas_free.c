
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_flagsext; int * t_bwmeas; } ;


 int TF_MEASURESNDBW ;
 int tcp_bwmeas_zone ;
 int zfree (int ,int *) ;

void
tcp_bwmeas_free(struct tcpcb *tp)
{
 zfree(tcp_bwmeas_zone, tp->t_bwmeas);
 tp->t_bwmeas = ((void*)0);
 tp->t_flagsext &= ~(TF_MEASURESNDBW);
}
