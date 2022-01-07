
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {int t_pipeack; int t_flagsext; int snd_cwnd; TYPE_2__* t_inpcb; } ;
struct TYPE_3__ {scalar_t__ sb_cc; } ;
struct socket {TYPE_1__ so_snd; } ;
struct TYPE_4__ {struct socket* inp_socket; } ;


 int TF_CWND_NONVALIDATED ;
 scalar_t__ tcp_check_cwnd_nonvalidated ;

inline uint32_t
tcp_cc_is_cwnd_nonvalidated(struct tcpcb *tp)
{
 struct socket *so = tp->t_inpcb->inp_socket;
 if (tp->t_pipeack == 0 || tcp_check_cwnd_nonvalidated == 0) {
  tp->t_flagsext &= ~TF_CWND_NONVALIDATED;
  return (0);
 }






 if (tp->t_pipeack >= (tp->snd_cwnd >> 1) ||
     (so != ((void*)0) && so->so_snd.sb_cc > tp->snd_cwnd))
  tp->t_flagsext &= ~TF_CWND_NONVALIDATED;
 else
  tp->t_flagsext |= TF_CWND_NONVALIDATED;
 return (tp->t_flagsext & TF_CWND_NONVALIDATED);
}
