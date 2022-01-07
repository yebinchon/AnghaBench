
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int si_note; } ;
struct TYPE_4__ {int si_note; } ;
struct tty {int t_state; TYPE_2__ t_wsel; TYPE_1__ t_rsel; } ;
struct ptmx_ioctl {struct tty* pt_tty; } ;
struct knote {int kn_filter; struct tty* kn_hook; int kn_filtid; } ;
typedef int dev_t ;
struct TYPE_6__ {scalar_t__ d_open; } ;


 int ENODEV ;
 int ENXIO ;
 int EVFILTID_PTSD ;


 int KNOTE_ATTACH (int *,struct knote*) ;
 int TS_ISOPEN ;
 int assert (int) ;
 TYPE_3__* cdevsw ;
 int knote_set_error (struct knote*,int ) ;
 size_t major (int ) ;
 int minor (int ) ;
 int panic (char*,int,struct knote*,struct tty*) ;
 struct ptmx_ioctl* ptmx_get_ioctl (int ,int ) ;
 int ptsd_kqops_common (struct knote*,struct tty*) ;
 scalar_t__ ptsopen ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttyhold (struct tty*) ;

int
ptsd_kqfilter(dev_t dev, struct knote *kn)
{
 struct tty *tp = ((void*)0);
 struct ptmx_ioctl *pti = ((void*)0);
 int ret;


 if (cdevsw[major(dev)].d_open != ptsopen) {
  knote_set_error(kn, ENODEV);
  return 0;
 }

 if ((pti = ptmx_get_ioctl(minor(dev), 0)) == ((void*)0)) {
  knote_set_error(kn, ENXIO);
  return 0;
 }

 tp = pti->pt_tty;
 tty_lock(tp);

 assert(tp->t_state & TS_ISOPEN);

 kn->kn_filtid = EVFILTID_PTSD;

 ttyhold(tp);
 kn->kn_hook = tp;

 switch (kn->kn_filter) {
 case 129:
  KNOTE_ATTACH(&tp->t_rsel.si_note, kn);
  break;
 case 128:
  KNOTE_ATTACH(&tp->t_wsel.si_note, kn);
  break;
 default:
  panic("ptsd kevent: unexpected filter: %d, kn = %p, tty = %p",
    kn->kn_filter, kn, tp);
  break;
 }


 ret = ptsd_kqops_common(kn, tp);

 tty_unlock(tp);

 return ret;
}
