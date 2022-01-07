
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct xtcpcb64 {int t_force; scalar_t__ t_badrxtwin; int snd_ssthresh_prev; int snd_cwnd_prev; int snd_recover; scalar_t__ cc_recv; scalar_t__ cc_send; int last_ack_sent; int ts_recent_age; int ts_recent; int requested_s_scale; int request_r_scale; int rcv_scale; int snd_scale; int t_iobc; int t_oobflags; int t_softerror; int max_sndwnd; int t_rttupdated; int t_rttmin; int t_rxtshift; int t_rttvar; int t_srtt; int t_maxseg; int t_rxtcur; int t_rtseq; int t_rtttime; int t_starttime; int t_rcvtime; int t_maxopd; int snd_ssthresh; int snd_cwnd; int snd_wnd; int rcv_up; int rcv_wnd; int rcv_adv; int rcv_nxt; int irs; int iss; int snd_wl2; int snd_wl1; int snd_up; int snd_nxt; int snd_max; int snd_una; int t_flags; int t_state; int * t_timer; int t_dupacks; scalar_t__ t_segq; } ;
struct TYPE_2__ {int lh_first; } ;
struct tcpcb {int t_flagsext; int snd_ssthresh_prev; int snd_cwnd_prev; int snd_recover; int last_ack_sent; int ts_recent_age; int ts_recent; int requested_s_scale; int request_r_scale; int rcv_scale; int snd_scale; int t_iobc; int t_oobflags; int t_softerror; int max_sndwnd; int t_rttupdated; int t_rttmin; int t_rxtshift; int t_rttvar; int t_srtt; int t_maxseg; int t_rxtcur; int t_rtseq; int t_rtttime; int t_starttime; int t_rcvtime; int t_maxopd; int snd_ssthresh; int snd_cwnd; int snd_wnd; int rcv_up; int rcv_wnd; int rcv_adv; int rcv_nxt; int irs; int iss; int snd_wl2; int snd_wl1; int snd_up; int snd_nxt; int snd_max; int snd_una; int t_flags; int t_state; int * t_timer; int t_dupacks; TYPE_1__ t_segq; } ;


 size_t TCPT_2MSL ;
 size_t TCPT_2MSL_EXT ;
 size_t TCPT_KEEP ;
 size_t TCPT_KEEP_EXT ;
 size_t TCPT_PERSIST ;
 size_t TCPT_PERSIST_EXT ;
 size_t TCPT_REXMT ;
 size_t TCPT_REXMT_EXT ;
 int TF_FORCE ;
 scalar_t__ VM_KERNEL_ADDRPERM (int ) ;

__attribute__((used)) static void
tcpcb_to_xtcpcb64(struct tcpcb *tp, struct xtcpcb64 *otp)
{
 otp->t_segq = (uint32_t)VM_KERNEL_ADDRPERM(tp->t_segq.lh_first);
 otp->t_dupacks = tp->t_dupacks;
 otp->t_timer[TCPT_REXMT_EXT] = tp->t_timer[TCPT_REXMT];
 otp->t_timer[TCPT_PERSIST_EXT] = tp->t_timer[TCPT_PERSIST];
 otp->t_timer[TCPT_KEEP_EXT] = tp->t_timer[TCPT_KEEP];
 otp->t_timer[TCPT_2MSL_EXT] = tp->t_timer[TCPT_2MSL];
 otp->t_state = tp->t_state;
 otp->t_flags = tp->t_flags;
 otp->t_force = (tp->t_flagsext & TF_FORCE) ? 1 : 0;
 otp->snd_una = tp->snd_una;
 otp->snd_max = tp->snd_max;
 otp->snd_nxt = tp->snd_nxt;
 otp->snd_up = tp->snd_up;
 otp->snd_wl1 = tp->snd_wl1;
 otp->snd_wl2 = tp->snd_wl2;
 otp->iss = tp->iss;
 otp->irs = tp->irs;
 otp->rcv_nxt = tp->rcv_nxt;
 otp->rcv_adv = tp->rcv_adv;
 otp->rcv_wnd = tp->rcv_wnd;
 otp->rcv_up = tp->rcv_up;
 otp->snd_wnd = tp->snd_wnd;
 otp->snd_cwnd = tp->snd_cwnd;
 otp->snd_ssthresh = tp->snd_ssthresh;
 otp->t_maxopd = tp->t_maxopd;
 otp->t_rcvtime = tp->t_rcvtime;
 otp->t_starttime = tp->t_starttime;
 otp->t_rtttime = tp->t_rtttime;
 otp->t_rtseq = tp->t_rtseq;
 otp->t_rxtcur = tp->t_rxtcur;
 otp->t_maxseg = tp->t_maxseg;
 otp->t_srtt = tp->t_srtt;
 otp->t_rttvar = tp->t_rttvar;
 otp->t_rxtshift = tp->t_rxtshift;
 otp->t_rttmin = tp->t_rttmin;
 otp->t_rttupdated = tp->t_rttupdated;
 otp->max_sndwnd = tp->max_sndwnd;
 otp->t_softerror = tp->t_softerror;
 otp->t_oobflags = tp->t_oobflags;
 otp->t_iobc = tp->t_iobc;
 otp->snd_scale = tp->snd_scale;
 otp->rcv_scale = tp->rcv_scale;
 otp->request_r_scale = tp->request_r_scale;
 otp->requested_s_scale = tp->requested_s_scale;
 otp->ts_recent = tp->ts_recent;
 otp->ts_recent_age = tp->ts_recent_age;
 otp->last_ack_sent = tp->last_ack_sent;
 otp->cc_send = 0;
 otp->cc_recv = 0;
 otp->snd_recover = tp->snd_recover;
 otp->snd_cwnd_prev = tp->snd_cwnd_prev;
 otp->snd_ssthresh_prev = tp->snd_ssthresh_prev;
 otp->t_badrxtwin = 0;
}
