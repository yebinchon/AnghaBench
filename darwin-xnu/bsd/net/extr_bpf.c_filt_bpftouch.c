
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_sfflags; int kn_sdata; scalar_t__ kn_hook; } ;
struct kevent_internal_s {int fflags; int data; } ;
struct bpf_d {int dummy; } ;


 int bpf_mlock ;
 int filt_bpfread_common (struct knote*,struct bpf_d*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

__attribute__((used)) static int
filt_bpftouch(struct knote *kn, struct kevent_internal_s *kev)
{
 struct bpf_d *d = (struct bpf_d *)kn->kn_hook;
 int res;

 lck_mtx_lock(bpf_mlock);


 kn->kn_sdata = kev->data;
 kn->kn_sfflags = kev->fflags;


 res = filt_bpfread_common(kn, d);

 lck_mtx_unlock(bpf_mlock);

 return (res);
}
