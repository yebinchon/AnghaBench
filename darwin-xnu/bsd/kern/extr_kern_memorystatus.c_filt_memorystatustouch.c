
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_sfflags; scalar_t__ kn_fflags; } ;
struct kevent_internal_s {int fflags; } ;


 int EVFILT_MEMORYSTATUS_ALL_MASK ;
 int NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL ;
 int NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_ACTIVE ;
 int NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_INACTIVE ;
 int NOTE_MEMORYSTATUS_PROC_LIMIT_WARN ;
 int NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_ACTIVE ;
 int NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_INACTIVE ;
 int memorystatus_klist_lock () ;
 int memorystatus_klist_unlock () ;

__attribute__((used)) static int
filt_memorystatustouch(struct knote *kn, struct kevent_internal_s *kev)
{
 int res;
 int prev_kn_sfflags = 0;

 memorystatus_klist_lock();






 prev_kn_sfflags = kn->kn_sfflags;
 kn->kn_sfflags = (kev->fflags & EVFILT_MEMORYSTATUS_ALL_MASK);






 if (kn->kn_sfflags & NOTE_MEMORYSTATUS_PROC_LIMIT_WARN) {



  if (prev_kn_sfflags & NOTE_MEMORYSTATUS_PROC_LIMIT_WARN) {




   if (prev_kn_sfflags & NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_ACTIVE) {
    kn->kn_sfflags |= NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_ACTIVE;
   }
   if (prev_kn_sfflags & NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_INACTIVE) {
    kn->kn_sfflags |= NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_INACTIVE;
   }
  } else {




   kn->kn_sfflags |= NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_ACTIVE;
   kn->kn_sfflags |= NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_INACTIVE;
  }
 }

 if (kn->kn_sfflags & NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL) {



  if (prev_kn_sfflags & NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL) {




   if (prev_kn_sfflags & NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_ACTIVE) {
    kn->kn_sfflags |= NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_ACTIVE;
   }
   if (prev_kn_sfflags & NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_INACTIVE) {
    kn->kn_sfflags |= NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_INACTIVE;
   }
  } else {




   kn->kn_sfflags |= NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_ACTIVE;
   kn->kn_sfflags |= NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_INACTIVE;
  }
 }
 res = (kn->kn_fflags != 0);

 memorystatus_klist_unlock();

 return res;
}
