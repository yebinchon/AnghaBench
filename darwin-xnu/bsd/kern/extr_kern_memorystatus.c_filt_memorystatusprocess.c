
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent_internal_s {int dummy; } ;
struct knote {scalar_t__ kn_fflags; scalar_t__ kn_data; int kn_flags; struct kevent_internal_s kn_kevent; } ;
struct filt_process_s {int dummy; } ;


 int EV_CLEAR ;
 int memorystatus_klist_lock () ;
 int memorystatus_klist_unlock () ;

__attribute__((used)) static int
filt_memorystatusprocess(struct knote *kn, struct filt_process_s *data, struct kevent_internal_s *kev)
{
#pragma unused(data)
 int res;

 memorystatus_klist_lock();
 res = (kn->kn_fflags != 0);
 if (res) {
  *kev = kn->kn_kevent;
  kn->kn_flags |= EV_CLEAR;
  kn->kn_fflags = 0;
  kn->kn_data = 0;
 }
 memorystatus_klist_unlock();

 return res;
}
