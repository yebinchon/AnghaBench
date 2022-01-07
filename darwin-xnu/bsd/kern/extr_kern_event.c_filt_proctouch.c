
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {scalar_t__ kn_fflags; int kn_sfflags; } ;
struct kevent_internal_s {int fflags; } ;


 int proc_klist_lock () ;
 int proc_klist_unlock () ;

__attribute__((used)) static int
filt_proctouch(struct knote *kn, struct kevent_internal_s *kev)
{
 int res;

 proc_klist_lock();


 kn->kn_sfflags = kev->fflags;
 res = (kn->kn_fflags != 0);

 proc_klist_unlock();

 return res;
}
