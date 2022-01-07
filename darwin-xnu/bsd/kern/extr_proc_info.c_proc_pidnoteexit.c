
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* proc_t ;
typedef scalar_t__ pid_t ;
struct TYPE_5__ {scalar_t__ p_ppid; int p_lflag; scalar_t__ p_oppid; int p_xstat; int p_csflags; } ;


 int CS_KILLED ;
 int EACCES ;
 int NOTE_EXITSTATUS ;
 int NOTE_EXIT_CSERROR ;
 int NOTE_EXIT_DECRYPTFAIL ;
 int NOTE_EXIT_DETAIL ;
 int NOTE_EXIT_MEMORY ;
 int NOTE_EXIT_MEMORY_FCTHRASHING ;
 int NOTE_EXIT_MEMORY_HIWAT ;
 int NOTE_EXIT_MEMORY_IDLE ;
 int NOTE_EXIT_MEMORY_PID ;
 int NOTE_EXIT_MEMORY_VMPAGESHORTAGE ;
 int NOTE_EXIT_MEMORY_VMTHRASHING ;
 int NOTE_EXIT_MEMORY_VNODE ;
 int NOTE_PDATAMASK ;



 int P_JETSAM_MASK ;




 int P_LTERM_DECRYPTFAIL ;
 int P_LTERM_JETSAM ;
 int P_LTRACED ;
 int proc_lock (TYPE_1__*) ;
 scalar_t__ proc_selfpid () ;
 int proc_unlock (TYPE_1__*) ;

int
proc_pidnoteexit(proc_t p, uint64_t flags, uint32_t *data)
{
 uint32_t exit_data = 0;
 uint32_t exit_flags = (uint32_t)flags;

 proc_lock(p);





 do {
  pid_t selfpid = proc_selfpid();

  if (p->p_ppid == selfpid)
   break;

  if ((p->p_lflag & P_LTRACED) != 0 &&
      (p->p_oppid == selfpid))
   break;

  proc_unlock(p);
  return (EACCES);
 } while (0);

 if ((exit_flags & NOTE_EXITSTATUS) != 0) {

  exit_data |= (p->p_xstat & NOTE_PDATAMASK);
 }

 if ((exit_flags & NOTE_EXIT_DETAIL) != 0) {

  if ((p->p_lflag & P_LTERM_DECRYPTFAIL) != 0) {
   exit_data |= NOTE_EXIT_DECRYPTFAIL;
  }

  if ((p->p_lflag & P_LTERM_JETSAM) != 0) {
   exit_data |= NOTE_EXIT_MEMORY;

   switch (p->p_lflag & P_JETSAM_MASK) {
   case 130:
    exit_data |= NOTE_EXIT_MEMORY_VMPAGESHORTAGE;
    break;
   case 129:
    exit_data |= NOTE_EXIT_MEMORY_VMTHRASHING;
    break;
   case 134:
    exit_data |= NOTE_EXIT_MEMORY_FCTHRASHING;
    break;
   case 128:
    exit_data |= NOTE_EXIT_MEMORY_VNODE;
    break;
   case 133:
    exit_data |= NOTE_EXIT_MEMORY_HIWAT;
    break;
   case 131:
    exit_data |= NOTE_EXIT_MEMORY_PID;
    break;
   case 132:
    exit_data |= NOTE_EXIT_MEMORY_IDLE;
    break;
   }
  }

  if ((p->p_csflags & CS_KILLED) != 0) {
   exit_data |= NOTE_EXIT_CSERROR;
  }
 }

 proc_unlock(p);

 *data = exit_data;

 return (0);
}
