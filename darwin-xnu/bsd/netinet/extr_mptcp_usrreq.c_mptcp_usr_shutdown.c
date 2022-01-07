
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct mptses {int dummy; } ;
struct mppcb {scalar_t__ mpp_state; } ;


 int EINVAL ;
 scalar_t__ MPPCB_STATE_DEAD ;
 int VERIFY (int ) ;
 struct mppcb* mpsotomppcb (struct socket*) ;
 int mptcp_output (struct mptses*) ;
 struct mptses* mptcp_usrclosed (struct mptses*) ;
 struct mptses* mptompte (struct mppcb*) ;
 int socantsendmore (struct socket*) ;

__attribute__((used)) static int
mptcp_usr_shutdown(struct socket *mp_so)
{
 struct mppcb *mpp = mpsotomppcb(mp_so);
 struct mptses *mpte;
 int error = 0;

 if (mpp == ((void*)0) || mpp->mpp_state == MPPCB_STATE_DEAD) {
  error = EINVAL;
  goto out;
 }
 mpte = mptompte(mpp);
 VERIFY(mpte != ((void*)0));

 socantsendmore(mp_so);

 mpte = mptcp_usrclosed(mpte);
 if (mpte != ((void*)0))
  error = mptcp_output(mpte);
out:
 return (error);
}
