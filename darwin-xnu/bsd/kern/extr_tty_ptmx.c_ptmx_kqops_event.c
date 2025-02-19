
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct ptmx_ioctl {int dummy; } ;
struct knote {int kn_flags; } ;


 int EV_EOF ;
 int EV_ONESHOT ;
 long NOTE_REVOKE ;
 struct ptmx_ioctl* ptmx_knote_ioctl (struct knote*) ;
 struct tty* ptmx_knote_tty (struct knote*) ;
 int ptmx_kqops_common (struct knote*,struct ptmx_ioctl*,struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static int
ptmx_kqops_event(struct knote *kn, long hint)
{
 struct ptmx_ioctl *pti = ptmx_knote_ioctl(kn);
 struct tty *tp = ptmx_knote_tty(kn);
 int ret;
 bool revoked = hint & NOTE_REVOKE;
 hint &= ~NOTE_REVOKE;

 if (!hint) {
  tty_lock(tp);
 }

 if (revoked) {
  kn->kn_flags |= EV_EOF | EV_ONESHOT;
  ret = 1;
 } else {
  ret = ptmx_kqops_common(kn, pti, tp);
 }

 if (!hint) {
  tty_unlock(tp);
 }

 return ret;
}
