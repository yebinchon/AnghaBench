
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct knote {scalar_t__ kn_vnode_kqok; int kn_sfflags; int kn_sdata; } ;
struct kevent_internal_s {int fflags; int data; } ;


 int ENOENT ;
 int filt_tty_common (struct knote*,struct tty*) ;
 int knote_set_error (struct knote*,int ) ;
 struct tty* tty_lock_from_knote (struct knote*) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static int
filt_ttytouch(struct knote *kn, struct kevent_internal_s *kev)
{
 struct tty *tp;
 int res = 0;

 tp = tty_lock_from_knote(kn);
 if (!tp) {
  knote_set_error(kn, ENOENT);
  return 0;
 }

 kn->kn_sdata = kev->data;
 kn->kn_sfflags = kev->fflags;

 if (kn->kn_vnode_kqok) {
  res = filt_tty_common(kn, tp);
 }

 tty_unlock(tp);

 return res;
}
