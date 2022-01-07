
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {unsigned int kn_sfflags; } ;


 int ENOTSUP ;
 unsigned int EVFILT_MEMORYSTATUS_ALL_MASK ;
 int KNOTE_ATTACH (int *,struct knote*) ;
 int NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL ;
 int NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_ACTIVE ;
 int NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_INACTIVE ;
 int NOTE_MEMORYSTATUS_PROC_LIMIT_WARN ;
 int NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_ACTIVE ;
 int NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_INACTIVE ;
 int memorystatus_klist ;
 int memorystatus_klist_lock () ;
 int memorystatus_klist_unlock () ;

int
memorystatus_knote_register(struct knote *kn) {
 int error = 0;

 memorystatus_klist_lock();




    if ((kn->kn_sfflags & EVFILT_MEMORYSTATUS_ALL_MASK) == (unsigned int) kn->kn_sfflags) {


  if (kn->kn_sfflags & NOTE_MEMORYSTATUS_PROC_LIMIT_WARN) {
   kn->kn_sfflags |= NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_ACTIVE;
   kn->kn_sfflags |= NOTE_MEMORYSTATUS_PROC_LIMIT_WARN_INACTIVE;
  }

  if (kn->kn_sfflags & NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL) {
   kn->kn_sfflags |= NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_ACTIVE;
   kn->kn_sfflags |= NOTE_MEMORYSTATUS_PROC_LIMIT_CRITICAL_INACTIVE;
  }


  KNOTE_ATTACH(&memorystatus_klist, kn);

 } else {
  error = ENOTSUP;
 }

 memorystatus_klist_unlock();

 return error;
}
