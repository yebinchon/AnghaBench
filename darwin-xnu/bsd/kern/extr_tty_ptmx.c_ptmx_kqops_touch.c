
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct ptmx_ioctl {int dummy; } ;
struct knote {int kn_sdata; int kn_sfflags; } ;
struct kevent_internal_s {int data; int fflags; } ;


 struct ptmx_ioctl* ptmx_knote_ioctl (struct knote*) ;
 struct tty* ptmx_knote_tty (struct knote*) ;
 int ptmx_kqops_common (struct knote*,struct ptmx_ioctl*,struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static int
ptmx_kqops_touch(struct knote *kn, struct kevent_internal_s *kev)
{
 struct ptmx_ioctl *pti = ptmx_knote_ioctl(kn);
 struct tty *tp = ptmx_knote_tty(kn);
 int ret;

 tty_lock(tp);


 kn->kn_sfflags = kev->fflags;
 kn->kn_sdata = kev->data;


 ret = ptmx_kqops_common(kn, pti, tp);

 tty_unlock(tp);

 return ret;
}
