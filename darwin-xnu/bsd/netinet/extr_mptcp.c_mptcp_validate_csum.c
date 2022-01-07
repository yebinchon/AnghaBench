
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct tcpcb {TYPE_1__* t_inpcb; int t_mpflags; } ;
struct mbuf {int dummy; } ;
struct TYPE_4__ {int tcps_mp_badcsum; } ;
struct TYPE_3__ {int inp_socket; } ;


 int TMPF_SND_MPFAIL ;
 int m_freem (struct mbuf*) ;
 scalar_t__ mptcp_input_csum (struct tcpcb*,struct mbuf*,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int mptcp_notify_mpfail (int ) ;
 TYPE_2__ tcpstat ;

int
mptcp_validate_csum(struct tcpcb *tp, struct mbuf *m, uint64_t dsn,
      uint32_t sseq, uint16_t dlen, uint16_t csum, uint16_t dfin)
{
 uint16_t mptcp_csum;

 mptcp_csum = mptcp_input_csum(tp, m, dsn, sseq, dlen, csum, dfin);
 if (mptcp_csum) {
  tp->t_mpflags |= TMPF_SND_MPFAIL;
  mptcp_notify_mpfail(tp->t_inpcb->inp_socket);
  m_freem(m);
  tcpstat.tcps_mp_badcsum++;
  return (-1);
 }
 return (0);
}
