
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent_internal_s {int dummy; } ;
struct knote {struct kevent_internal_s kn_kevent; scalar_t__ kn_hook; } ;
struct filt_process_s {int dummy; } ;
struct bpf_d {int dummy; } ;


 int bpf_mlock ;
 int filt_bpfread_common (struct knote*,struct bpf_d*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

__attribute__((used)) static int
filt_bpfprocess(struct knote *kn, struct filt_process_s *data,
    struct kevent_internal_s *kev)
{
#pragma unused(data)
 struct bpf_d *d = (struct bpf_d *)kn->kn_hook;
 int res;

 lck_mtx_lock(bpf_mlock);
 res = filt_bpfread_common(kn, d);
 if (res) {
  *kev = kn->kn_kevent;
 }
 lck_mtx_unlock(bpf_mlock);

 return (res);
}
