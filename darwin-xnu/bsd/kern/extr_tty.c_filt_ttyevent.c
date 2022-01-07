
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct knote {int kn_flags; } ;


 int ENOENT ;
 int EV_EOF ;
 int EV_ONESHOT ;
 long NOTE_REVOKE ;
 int filt_tty_common (struct knote*,struct tty*) ;
 int knote_set_error (struct knote*,int ) ;
 struct tty* tty_from_knote (struct knote*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static int
filt_ttyevent(struct knote *kn, long hint)
{
 int ret;
 struct tty *tp;
 bool revoked = hint & NOTE_REVOKE;
 hint &= ~NOTE_REVOKE;

 tp = tty_from_knote(kn);
 if (!tp) {
  knote_set_error(kn, ENOENT);
  return 0;
 }

 if (!hint) {
  tty_lock(tp);
 }

 if (revoked) {
  kn->kn_flags |= EV_EOF | EV_ONESHOT;
  ret = 1;
 } else {
  ret = filt_tty_common(kn, tp);
 }

 if (!hint) {
  tty_unlock(tp);
 }

 return ret;
}
