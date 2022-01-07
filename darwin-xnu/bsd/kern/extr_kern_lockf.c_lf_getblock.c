
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf {int lf_flags; scalar_t__ lf_type; int lf_owner; struct lockf* lf_next; struct lockf** lf_head; } ;
typedef int pid_t ;


 int F_OFD_LOCK ;
 int F_POSIX ;
 scalar_t__ F_WRLCK ;
 struct lockf* NOLOCKF ;
 int OTHERS ;
 scalar_t__ OVERLAP_NONE ;
 scalar_t__ lf_findoverlap (struct lockf*,struct lockf*,int ,struct lockf***,struct lockf**) ;
 int proc_pid (int ) ;

__attribute__((used)) static struct lockf *
lf_getblock(struct lockf *lock, pid_t matchpid)
{
 struct lockf **prev, *overlap, *lf = *(lock->lf_head);

 for (prev = lock->lf_head;
     lf_findoverlap(lf, lock, OTHERS, &prev, &overlap) != OVERLAP_NONE;
     lf = overlap->lf_next) {







  if (matchpid != -1 &&
      (overlap->lf_flags & (F_POSIX|F_OFD_LOCK)) != 0 &&
      proc_pid(overlap->lf_owner) != matchpid)
   continue;




  if ((lock->lf_type == F_WRLCK || overlap->lf_type == F_WRLCK))
   return (overlap);
 }
 return (NOLOCKF);
}
