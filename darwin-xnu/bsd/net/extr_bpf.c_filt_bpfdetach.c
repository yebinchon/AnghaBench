
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {scalar_t__ kn_hook; } ;
struct TYPE_2__ {int si_note; } ;
struct bpf_d {int bd_flags; TYPE_1__ bd_sel; } ;


 int BPF_KNOTE ;
 int KNOTE_DETACH (int *,struct knote*) ;
 int bpf_mlock ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

__attribute__((used)) static void
filt_bpfdetach(struct knote *kn)
{
 struct bpf_d *d = (struct bpf_d *)kn->kn_hook;

 lck_mtx_lock(bpf_mlock);
 if (d->bd_flags & BPF_KNOTE) {
  KNOTE_DETACH(&d->bd_sel.si_note, kn);
  d->bd_flags &= ~BPF_KNOTE;
 }
 lck_mtx_unlock(bpf_mlock);
}
