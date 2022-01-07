
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_5__ {int si_note; } ;
struct TYPE_4__ {int si_note; } ;
struct ptmx_ioctl {TYPE_2__ pt_selw; TYPE_1__ pt_selr; struct tty* pt_tty; } ;
struct knote {int kn_filter; struct ptmx_ioctl* kn_hook; int kn_filtid; } ;
typedef int dev_t ;
struct TYPE_6__ {scalar_t__ d_open; } ;


 int ENODEV ;
 int ENXIO ;
 int EVFILTID_PTMX ;


 int KNOTE_ATTACH (int *,struct knote*) ;
 TYPE_3__* cdevsw ;
 int knote_set_error (struct knote*,int ) ;
 size_t major (int ) ;
 int minor (int ) ;
 int panic (char*,int,struct knote*,struct tty*) ;
 scalar_t__ ptcopen ;
 struct ptmx_ioctl* ptmx_get_ioctl (int ,int ) ;
 int ptmx_kqops_common (struct knote*,struct ptmx_ioctl*,struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttyhold (struct tty*) ;

int
ptmx_kqfilter(dev_t dev, struct knote *kn)
{
 struct tty *tp = ((void*)0);
 struct ptmx_ioctl *pti = ((void*)0);
 int ret;


 if (cdevsw[major(dev)].d_open != ptcopen) {
  knote_set_error(kn, ENODEV);
  return 0;
 }

 if ((pti = ptmx_get_ioctl(minor(dev), 0)) == ((void*)0)) {
  knote_set_error(kn, ENXIO);
  return 0;
 }

 tp = pti->pt_tty;
 tty_lock(tp);

 kn->kn_filtid = EVFILTID_PTMX;
 kn->kn_hook = pti;






 switch (kn->kn_filter) {
 case 129:
  KNOTE_ATTACH(&pti->pt_selr.si_note, kn);
  break;
 case 128:
  KNOTE_ATTACH(&pti->pt_selw.si_note, kn);
  break;
 default:
  panic("ptmx kevent: unexpected filter: %d, kn = %p, tty = %p",
    kn->kn_filter, kn, tp);
  break;
 }


 ret = ptmx_kqops_common(kn, pti, tp);


 ttyhold(tp);
 tty_unlock(tp);

 return ret;
}
