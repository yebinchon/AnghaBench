
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sb_flags; } ;
struct socket {int so_state; int so_flags1; TYPE_1__ so_snd; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct mptses {int dummy; } ;
struct mppcb {scalar_t__ mpp_state; } ;
struct mbuf {scalar_t__ m_len; } ;


 int ECONNRESET ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 int EWOULDBLOCK ;
 scalar_t__ MPPCB_STATE_DEAD ;
 int PRUS_EOF ;
 int PRUS_OOB ;
 int SB_NOCOMPRESS ;
 int SOF1_PRECONNECT_DATA ;
 int SS_ISCONNECTED ;
 int SS_ISCONNECTING ;
 int SS_NBIO ;
 int VERIFY (int) ;
 int m_freem (struct mbuf*) ;
 struct mppcb* mpsotomppcb (struct socket*) ;
 int mptcp_insert_dsn (struct mppcb*,struct mbuf*) ;
 int mptcp_output (struct mptses*) ;
 struct mptses* mptompte (struct mppcb*) ;
 int sbappendstream (TYPE_1__*,struct mbuf*) ;
 int sbwait (TYPE_1__*) ;

__attribute__((used)) static int
mptcp_usr_send(struct socket *mp_so, int prus_flags, struct mbuf *m,
    struct sockaddr *nam, struct mbuf *control, struct proc *p)
{
#pragma unused(nam, p)
 struct mppcb *mpp = mpsotomppcb(mp_so);
 struct mptses *mpte;
 int error = 0;

 if (prus_flags & (PRUS_OOB|PRUS_EOF)) {
  error = EOPNOTSUPP;
  goto out;
 }

 if (nam != ((void*)0)) {
  error = EOPNOTSUPP;
  goto out;
 }

 if (control != ((void*)0) && control->m_len != 0) {
  error = EOPNOTSUPP;
  goto out;
 }

 if (mpp == ((void*)0) || mpp->mpp_state == MPPCB_STATE_DEAD) {
  error = ECONNRESET;
  goto out;
 }
 mpte = mptompte(mpp);
 VERIFY(mpte != ((void*)0));

 if (!(mp_so->so_state & SS_ISCONNECTED) &&
     !(mp_so->so_flags1 & SOF1_PRECONNECT_DATA)) {
  error = ENOTCONN;
  goto out;
 }

 mptcp_insert_dsn(mpp, m);
 VERIFY(mp_so->so_snd.sb_flags & SB_NOCOMPRESS);
 sbappendstream(&mp_so->so_snd, m);
 m = ((void*)0);

 error = mptcp_output(mpte);
 if (error != 0)
  goto out;

 if (mp_so->so_state & SS_ISCONNECTING) {
  if (mp_so->so_state & SS_NBIO)
   error = EWOULDBLOCK;
  else
   error = sbwait(&mp_so->so_snd);
 }

out:
 if (error) {
  if (m != ((void*)0))
   m_freem(m);
  if (control != ((void*)0))
   m_freem(control);
 }
 return (error);
}
