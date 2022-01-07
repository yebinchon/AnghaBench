
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct knote {int kn_sdata; int kn_sfflags; struct tty* kn_hook; } ;
struct kevent_internal_s {int data; int fflags; } ;


 int ptsd_kqops_common (struct knote*,struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static int
ptsd_kqops_touch(struct knote *kn, struct kevent_internal_s *kev)
{
 struct tty *tp;
 int ret;

 tp = kn->kn_hook;

 tty_lock(tp);


 kn->kn_sfflags = kev->fflags;
 kn->kn_sdata = kev->data;


 ret = ptsd_kqops_common(kn, tp);

 tty_unlock(tp);

 return ret;
}
