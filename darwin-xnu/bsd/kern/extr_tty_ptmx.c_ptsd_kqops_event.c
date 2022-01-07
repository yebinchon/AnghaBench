
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct knote {int kn_flags; struct tty* kn_hook; } ;


 int EV_EOF ;
 int EV_ONESHOT ;
 long NOTE_REVOKE ;
 int ptsd_kqops_common (struct knote*,struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static int
ptsd_kqops_event(struct knote *kn, long hint)
{
 struct tty *tp = kn->kn_hook;
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
  ret = ptsd_kqops_common(kn, tp);
 }

 if (!hint) {
  tty_unlock(tp);
 }

 return ret;
}
