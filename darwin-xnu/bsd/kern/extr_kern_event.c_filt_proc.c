
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_7__ {TYPE_2__* p_proc; } ;
struct knote {int kn_sfflags; int kn_fflags; int kn_flags; long kn_data; TYPE_3__ kn_ptr; } ;
struct TYPE_8__ {TYPE_1__* kq_p; } ;
struct TYPE_6__ {scalar_t__ p_oppid; scalar_t__ p_ppid; int p_lflag; int p_csflags; } ;
struct TYPE_5__ {scalar_t__ p_pid; } ;


 int CS_KILLED ;
 int EV_EOF ;
 int EV_ONESHOT ;
 int NOTE_EXIT ;
 int NOTE_EXITSTATUS ;
 long NOTE_EXIT_CSERROR ;
 long NOTE_EXIT_DECRYPTFAIL ;
 int NOTE_EXIT_DETAIL ;
 long NOTE_EXIT_MEMORY ;
 long NOTE_EXIT_MEMORY_FCTHRASHING ;
 long NOTE_EXIT_MEMORY_HIWAT ;
 long NOTE_EXIT_MEMORY_IDLE ;
 long NOTE_EXIT_MEMORY_PID ;
 long NOTE_EXIT_MEMORY_VMPAGESHORTAGE ;
 long NOTE_EXIT_MEMORY_VMTHRASHING ;
 long NOTE_EXIT_MEMORY_VNODE ;
 int NOTE_PCTRLMASK ;
 long NOTE_PDATAMASK ;
 int NOTE_REAP ;



 int P_JETSAM_MASK ;




 int P_LTERM_DECRYPTFAIL ;
 int P_LTERM_JETSAM ;
 TYPE_4__* knote_get_kq (struct knote*) ;

__attribute__((used)) static int
filt_proc(struct knote *kn, long hint)
{
 u_int event;
 event = (u_int)hint & NOTE_PCTRLMASK;
 if (event & NOTE_EXIT) {
  if ((kn->kn_ptr.p_proc->p_oppid != 0)
      && (knote_get_kq(kn)->kq_p->p_pid != kn->kn_ptr.p_proc->p_ppid)) {



   return 0;
  }
 }




 if (kn->kn_sfflags & event)
  kn->kn_fflags |= event;

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
 if ((event == NOTE_REAP) || ((event == NOTE_EXIT) && !(kn->kn_sfflags & NOTE_REAP))) {
  kn->kn_flags |= (EV_EOF | EV_ONESHOT);
 }
#pragma clang diagnostic pop








 if (event == NOTE_EXIT) {
  kn->kn_data = 0;
  if ((kn->kn_sfflags & NOTE_EXITSTATUS) != 0) {
   kn->kn_fflags |= NOTE_EXITSTATUS;
   kn->kn_data |= (hint & NOTE_PDATAMASK);
  }
  if ((kn->kn_sfflags & NOTE_EXIT_DETAIL) != 0) {
   kn->kn_fflags |= NOTE_EXIT_DETAIL;
   if ((kn->kn_ptr.p_proc->p_lflag &
        P_LTERM_DECRYPTFAIL) != 0) {
    kn->kn_data |= NOTE_EXIT_DECRYPTFAIL;
   }
   if ((kn->kn_ptr.p_proc->p_lflag &
        P_LTERM_JETSAM) != 0) {
    kn->kn_data |= NOTE_EXIT_MEMORY;
    switch (kn->kn_ptr.p_proc->p_lflag & P_JETSAM_MASK) {
    case 130:
     kn->kn_data |= NOTE_EXIT_MEMORY_VMPAGESHORTAGE;
     break;
    case 129:
     kn->kn_data |= NOTE_EXIT_MEMORY_VMTHRASHING;
     break;
    case 134:
     kn->kn_data |= NOTE_EXIT_MEMORY_FCTHRASHING;
     break;
    case 128:
     kn->kn_data |= NOTE_EXIT_MEMORY_VNODE;
     break;
    case 133:
     kn->kn_data |= NOTE_EXIT_MEMORY_HIWAT;
     break;
    case 131:
     kn->kn_data |= NOTE_EXIT_MEMORY_PID;
     break;
    case 132:
     kn->kn_data |= NOTE_EXIT_MEMORY_IDLE;
     break;
    }
   }
   if ((kn->kn_ptr.p_proc->p_csflags &
        CS_KILLED) != 0) {
    kn->kn_data |= NOTE_EXIT_CSERROR;
   }
  }
 }


 return (kn->kn_fflags != 0);
}
