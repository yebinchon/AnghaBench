
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {scalar_t__ kn_filter; int kn_filtid; struct bpf_d* kn_hook; int kn_data; void* kn_flags; } ;
struct TYPE_2__ {int si_note; } ;
struct bpf_d {int bd_flags; TYPE_1__ bd_sel; int * bd_bif; } ;
typedef int dev_t ;


 int BPF_CLOSING ;
 struct bpf_d* BPF_DEV_RESERVED ;
 int BPF_KNOTE ;
 scalar_t__ CDEV_MAJOR ;
 int EINVAL ;
 int ENXIO ;
 int EVFILTID_BPFREAD ;
 scalar_t__ EVFILT_READ ;
 void* EV_ERROR ;
 int KNOTE_ATTACH (int *,struct knote*) ;
 struct bpf_d** bpf_dtab ;
 int bpf_mlock ;
 int filt_bpfread_common (struct knote*,struct bpf_d*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 scalar_t__ major (int ) ;
 size_t minor (int ) ;

int
bpfkqfilter(dev_t dev, struct knote *kn)
{
 struct bpf_d *d;
 int res;




 if (major(dev) != CDEV_MAJOR ||
     kn->kn_filter != EVFILT_READ) {
  kn->kn_flags = EV_ERROR;
  kn->kn_data = EINVAL;
  return (0);
 }

 lck_mtx_lock(bpf_mlock);

 d = bpf_dtab[minor(dev)];

 if (d == ((void*)0) || d == BPF_DEV_RESERVED ||
     (d->bd_flags & BPF_CLOSING) != 0 ||
     d->bd_bif == ((void*)0)) {
  lck_mtx_unlock(bpf_mlock);
  kn->kn_flags = EV_ERROR;
  kn->kn_data = ENXIO;
  return (0);
 }

 kn->kn_hook = d;
 kn->kn_filtid = EVFILTID_BPFREAD;
 KNOTE_ATTACH(&d->bd_sel.si_note, kn);
 d->bd_flags |= BPF_KNOTE;


 res = filt_bpfread_common(kn, d);

 lck_mtx_unlock(bpf_mlock);

 return (res);
}
