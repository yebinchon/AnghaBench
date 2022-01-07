
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vnode_t ;
struct knote {int kn_flags; int kn_vnode_kqok; int kn_vnode_use_ofst; int kn_filtid; int kn_data; } ;
struct kevent_internal_s {int dummy; } ;
typedef int int64_t ;
typedef int int32_t ;
typedef int dev_t ;
struct TYPE_4__ {scalar_t__ d_type; } ;
struct TYPE_3__ {int (* f_attach ) (struct knote*,struct kevent_internal_s*) ;} ;


 int CDEVSW_IS_PTC ;
 int CDEVSW_IS_PTS ;
 int CDEVSW_SELECT_KQUEUE ;
 int CDEVSW_USE_OFFSET ;
 scalar_t__ D_TTY ;
 int ENXIO ;
 int EVFILTID_PTMX ;
 int EVFILTID_PTSD ;
 int EVFILTID_TTY ;
 int EV_ERROR ;
 int assert (int ) ;
 int bpfkqfilter (int ,struct knote*) ;
 TYPE_2__* cdevsw ;
 int* cdevsw_flags ;
 int filt_specattach (struct knote*,struct kevent_internal_s*) ;
 TYPE_1__* knote_fops (struct knote*) ;
 int knote_set_error (struct knote*,int ) ;
 size_t major (int ) ;
 size_t nchrdev ;
 int ptmx_kqfilter (int ,struct knote*) ;
 int ptsd_kqfilter (int ,struct knote*) ;
 int stub1 (struct knote*,struct kevent_internal_s*) ;
 int vnode_ischr (int ) ;
 int vnode_specrdev (int ) ;

int
spec_kqfilter(vnode_t vp, struct knote *kn, struct kevent_internal_s *kev)
{
 dev_t dev;

 assert(vnode_ischr(vp));

 dev = vnode_specrdev(vp);
 if (major(dev) > nchrdev) {
  knote_set_error(kn, ENXIO);
  return 0;
 }

 kn->kn_vnode_kqok = !!(cdevsw_flags[major(dev)] & CDEVSW_SELECT_KQUEUE);
 kn->kn_vnode_use_ofst = !!(cdevsw_flags[major(dev)] & CDEVSW_USE_OFFSET);

 if (cdevsw_flags[major(dev)] & CDEVSW_IS_PTS) {
  kn->kn_filtid = EVFILTID_PTSD;
  return ptsd_kqfilter(dev, kn);
 } else if (cdevsw_flags[major(dev)] & CDEVSW_IS_PTC) {
  kn->kn_filtid = EVFILTID_PTMX;
  return ptmx_kqfilter(dev, kn);
 } else if (cdevsw[major(dev)].d_type == D_TTY && kn->kn_vnode_kqok) {





  kn->kn_filtid = EVFILTID_TTY;
  return knote_fops(kn)->f_attach(kn, kev);
 }


 return filt_specattach(kn, kev);
}
