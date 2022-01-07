
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef int user_addr_t ;
typedef int uint64_t ;
typedef int u_int64_t ;
typedef int u_int ;
struct TYPE_5__ {int stsy_return_type; int stsy_return; } ;
typedef TYPE_2__ systrace_sysent_t ;
typedef int dtrace_id_t ;
struct TYPE_4__ {int t_dtrace_errno; } ;


 int DTRACE_IDNONE ;
 int EJUSTRETURN ;
 int ERESTART ;
 size_t SYS_invalid ;
 int current_thread () ;
 int get_bsdthread_info (int ) ;
 unsigned short nsysent ;
 int stub1 (int ,int,int,int,int,int ) ;
 int systrace_probe (int ,int,int,int,int,int ) ;
 TYPE_2__* systrace_sysent ;

void
dtrace_systrace_syscall_return(unsigned short code, int rval, int *rv)
{
 systrace_sysent_t *sy;
 dtrace_id_t id;


 sy = (code >= nsysent) ? &systrace_sysent[SYS_invalid] : &systrace_sysent[code];

 if ((id = sy->stsy_return) != DTRACE_IDNONE) {
  uint64_t munged_rv0, munged_rv1;
     uthread_t uthread = (uthread_t)get_bsdthread_info(current_thread());

  if (uthread)
   uthread->t_dtrace_errno = rval;




  if (rval == ERESTART) {
   munged_rv0 = -1LL;
   munged_rv1 = -1LL;
  } else if (rval != EJUSTRETURN) {
   if (rval) {
    munged_rv0 = -1LL;
    munged_rv1 = -1LL;
   } else {
    switch (sy->stsy_return_type) {
    case 134:
     munged_rv0 = rv[0];
     munged_rv1 = rv[1];
     break;
    case 128:
     munged_rv0 = ((u_int)rv[0]);
     munged_rv1 = ((u_int)rv[1]);
     break;
    case 132:
    case 129:
     munged_rv0 = *(u_int64_t *)rv;
     munged_rv1 = 0LL;
     break;
    case 135:
    case 131:
    case 130:
     munged_rv0 = *(user_addr_t *)rv;
     munged_rv1 = 0LL;
     break;
    case 133:
     munged_rv0 = 0LL;
     munged_rv1 = 0LL;
     break;
    default:
     munged_rv0 = 0LL;
     munged_rv1 = 0LL;
     break;
    }
   }
  } else {
   munged_rv0 = 0LL;
   munged_rv1 = 0LL;
  }

  (*systrace_probe)(id, munged_rv0, munged_rv0, munged_rv1, (uint64_t)rval, 0);
 }
}
