
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent_internal_s {int dummy; } ;
struct knote {scalar_t__ kn_fflags; scalar_t__ kn_data; int kn_flags; struct kevent_internal_s kn_kevent; } ;
struct filt_process_s {int dummy; } ;


 int EV_CLEAR ;
 int fs_klist_lock ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

__attribute__((used)) static int
filt_fsprocess(struct knote *kn, struct filt_process_s *data, struct kevent_internal_s *kev)
{
#pragma unused(data)
 int res;

 lck_mtx_lock(fs_klist_lock);
 res = (kn->kn_fflags != 0);
 if (res) {
  *kev = kn->kn_kevent;
  kn->kn_flags |= EV_CLEAR;
  kn->kn_fflags = 0;
  kn->kn_data = 0;
 }
 lck_mtx_unlock(fs_klist_lock);
 return res;
}
