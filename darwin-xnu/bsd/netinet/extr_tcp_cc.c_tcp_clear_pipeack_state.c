
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ t_lossflightsize; scalar_t__ t_pipeack_ind; int t_pipeack_sample; } ;


 int bzero (int ,int) ;

inline void
tcp_clear_pipeack_state(struct tcpcb *tp)
{
 bzero(tp->t_pipeack_sample, sizeof(tp->t_pipeack_sample));
 tp->t_pipeack_ind = 0;
 tp->t_lossflightsize = 0;
}
