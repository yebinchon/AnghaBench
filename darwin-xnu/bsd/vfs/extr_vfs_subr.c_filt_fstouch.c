
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {scalar_t__ kn_fflags; int kn_sfflags; } ;
struct kevent_internal_s {int fflags; } ;


 int fs_klist_lock ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

__attribute__((used)) static int
filt_fstouch(struct knote *kn, struct kevent_internal_s *kev)
{
 int res;

 lck_mtx_lock(fs_klist_lock);

 kn->kn_sfflags = kev->fflags;
 res = (kn->kn_fflags != 0);

 lck_mtx_unlock(fs_klist_lock);

 return res;
}
