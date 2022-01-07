
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcpcb {scalar_t__ t_pmtud_saved_maxopd; scalar_t__ t_maxopd; scalar_t__ t_maxseg; TYPE_1__* t_inpcb; scalar_t__ t_pmtud_start_ts; int t_flags; } ;
typedef scalar_t__ int32_t ;
struct TYPE_6__ {int (* cwnd_init ) (struct tcpcb*) ;} ;
struct TYPE_5__ {int tcps_pmtudbh_reverted; } ;
struct TYPE_4__ {int inp_socket; } ;


 TYPE_3__* CC_ALGO (struct tcpcb*) ;
 int TF_BLACKHOLE ;
 int TF_PMTUD ;
 int VERIFY (int) ;
 int stub1 (struct tcpcb*) ;
 int tcp_update_mss_locked (int ,int *) ;
 TYPE_2__ tcpstat ;

void
tcp_pmtud_revert_segment_size(struct tcpcb *tp)
{
 int32_t optlen;

 VERIFY(tp->t_pmtud_saved_maxopd > 0);
 tp->t_flags |= TF_PMTUD;
 tp->t_flags &= ~TF_BLACKHOLE;
 optlen = tp->t_maxopd - tp->t_maxseg;
 tp->t_maxopd = tp->t_pmtud_saved_maxopd;
 tp->t_maxseg = tp->t_maxopd - optlen;





 if (CC_ALGO(tp)->cwnd_init != ((void*)0))
  CC_ALGO(tp)->cwnd_init(tp);
 tp->t_pmtud_start_ts = 0;
 tcpstat.tcps_pmtudbh_reverted++;


 tcp_update_mss_locked(tp->t_inpcb->inp_socket, ((void*)0));
}
