
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sb_hiwat; int sb_flags; } ;
struct TYPE_3__ {scalar_t__ sb_hiwat; scalar_t__ sb_preconn_hiwat; int sb_flags; } ;
struct socket {TYPE_2__ so_rcv; TYPE_1__ so_snd; } ;
struct proc {int dummy; } ;
struct mptses {struct mptcb* mpte_mptcb; } ;
struct mptcb {int dummy; } ;
struct mppcb {scalar_t__ mpp_pcbe; } ;


 int SB_AUTOSIZE ;
 int SB_NOCOMPRESS ;
 int SB_USRSIZE ;
 int VERIFY (int ) ;
 int mp_pcballoc (struct socket*,int *) ;
 struct mppcb* mpsotomppcb (struct socket*) ;
 int mtcbinfo ;
 int soreserve (struct socket*,int ,int ) ;
 int soreserve_preconnect (struct socket*,int) ;
 int tcp_recvspace ;
 int tcp_sendspace ;

__attribute__((used)) static int
mptcp_attach(struct socket *mp_so, struct proc *p)
{
#pragma unused(p)
 struct mptses *mpte = ((void*)0);
 struct mptcb *mp_tp = ((void*)0);
 struct mppcb *mpp = ((void*)0);
 int error = 0;

 if (mp_so->so_snd.sb_hiwat == 0 || mp_so->so_rcv.sb_hiwat == 0) {
  error = soreserve(mp_so, tcp_sendspace, tcp_recvspace);
  if (error != 0)
   goto out;
 }

 if (mp_so->so_snd.sb_preconn_hiwat == 0) {
  soreserve_preconnect(mp_so, 2048);
 }

 if ((mp_so->so_rcv.sb_flags & SB_USRSIZE) == 0)
  mp_so->so_rcv.sb_flags |= SB_AUTOSIZE;
 if ((mp_so->so_snd.sb_flags & SB_USRSIZE) == 0)
  mp_so->so_snd.sb_flags |= SB_AUTOSIZE;






 mp_so->so_snd.sb_flags |= SB_NOCOMPRESS;
 mp_so->so_rcv.sb_flags |= SB_NOCOMPRESS;

 if ((error = mp_pcballoc(mp_so, &mtcbinfo)) != 0) {
  goto out;
 }

 mpp = mpsotomppcb(mp_so);
 VERIFY(mpp != ((void*)0));
 mpte = (struct mptses *)mpp->mpp_pcbe;
 VERIFY(mpte != ((void*)0));
 mp_tp = mpte->mpte_mptcb;
 VERIFY(mp_tp != ((void*)0));
out:
 return (error);
}
