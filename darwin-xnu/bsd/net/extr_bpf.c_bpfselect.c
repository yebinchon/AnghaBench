
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct bpf_d {int bd_flags; scalar_t__ bd_hbuf_read; int bd_sel; int bd_slen; int bd_state; int bd_immediate; int bd_hlen; int * bd_bif; } ;
typedef int dev_t ;
typedef int caddr_t ;


 int BPF_CLOSING ;
 struct bpf_d* BPF_DEV_RESERVED ;
 int BPF_TIMED_OUT ;
 int ENXIO ;


 int PRINET ;
 int bpf_acquire_d (struct bpf_d*) ;
 struct bpf_d** bpf_dtab ;
 int bpf_mlock ;
 int bpf_release_d (struct bpf_d*) ;
 int bpf_start_timer (struct bpf_d*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 size_t minor (int ) ;
 int msleep (int ,int ,int ,char*,int *) ;
 int selrecord (struct proc*,int *,void*) ;

int
bpfselect(dev_t dev, int which, void * wql, struct proc *p)
{
 struct bpf_d *d;
 int ret = 0;

 lck_mtx_lock(bpf_mlock);

 d = bpf_dtab[minor(dev)];
 if (d == ((void*)0) || d == BPF_DEV_RESERVED ||
     (d->bd_flags & BPF_CLOSING) != 0) {
  lck_mtx_unlock(bpf_mlock);
  return (ENXIO);
 }

 bpf_acquire_d(d);

 if (d->bd_bif == ((void*)0)) {
  bpf_release_d(d);
  lck_mtx_unlock(bpf_mlock);
  return (ENXIO);
 }

 while (d->bd_hbuf_read != 0)
  msleep((caddr_t)d, bpf_mlock, PRINET, "bpf_reading", ((void*)0));

 if ((d->bd_flags & BPF_CLOSING) != 0) {
  bpf_release_d(d);
  lck_mtx_unlock(bpf_mlock);
  return (ENXIO);
 }

 switch (which) {
  case 129:
   if (d->bd_hlen != 0 ||
       ((d->bd_immediate ||
       d->bd_state == BPF_TIMED_OUT) && d->bd_slen != 0))
    ret = 1;
   else {





    selrecord(p, &d->bd_sel, wql);
    bpf_start_timer(d);
   }
   break;

  case 128:

   ret = 1;
   break;
 }

 bpf_release_d(d);
 lck_mtx_unlock(bpf_mlock);

 return (ret);
}
