
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;


struct TYPE_19__ {scalar_t__ p_pid; scalar_t__ p_dtrace_count; int p_dtrace_sprlock; } ;
typedef TYPE_2__ proc_t ;
typedef scalar_t__ pid_t ;
struct TYPE_20__ {scalar_t__ ftt_pid; TYPE_1__* ftt_proc; struct TYPE_20__* ftt_next; } ;
typedef TYPE_3__ fasttrap_tracepoint_t ;
struct TYPE_21__ {int ftb_mtx; TYPE_3__* ftb_data; } ;
typedef TYPE_4__ fasttrap_bucket_t ;
struct TYPE_18__ {scalar_t__ ftpc_acount; } ;
struct TYPE_17__ {unsigned int fth_nent; TYPE_4__* fth_table; } ;


 int ASSERT (int) ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 TYPE_2__* current_proc () ;
 int dtrace_ptss_fork (TYPE_2__*,TYPE_2__*) ;
 TYPE_11__ fasttrap_tpoints ;
 int fasttrap_tracepoint_remove (TYPE_2__*,TYPE_3__*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int printf (char*,scalar_t__) ;
 int proc_lock (TYPE_2__*) ;
 int proc_unlock (TYPE_2__*) ;
 TYPE_2__* sprlock (scalar_t__) ;
 int sprunlock (TYPE_2__*) ;

__attribute__((used)) static void
fasttrap_fork(proc_t *p, proc_t *cp)
{
 pid_t ppid = p->p_pid;
 unsigned int i;

 ASSERT(current_proc() == p);
 LCK_MTX_ASSERT(&p->p_dtrace_sprlock, LCK_MTX_ASSERT_OWNED);
 ASSERT(p->p_dtrace_count > 0);
 ASSERT(cp->p_dtrace_count == 0);
 if (cp != sprlock(cp->p_pid)) {
  printf("fasttrap_fork: sprlock(%d) returned a different proc\n", cp->p_pid);
  return;
 }
 proc_unlock(cp);





 for (i = 0; i < fasttrap_tpoints.fth_nent; i++) {
  fasttrap_tracepoint_t *tp;
  fasttrap_bucket_t *bucket = &fasttrap_tpoints.fth_table[i];

  lck_mtx_lock(&bucket->ftb_mtx);
  for (tp = bucket->ftb_data; tp != ((void*)0); tp = tp->ftt_next) {
   if (tp->ftt_pid == ppid &&
       tp->ftt_proc->ftpc_acount != 0) {
    fasttrap_tracepoint_remove(cp, tp);
     ASSERT(tp->ftt_proc->ftpc_acount != 0);
   }
  }
  lck_mtx_unlock(&bucket->ftb_mtx);
 }




 dtrace_ptss_fork(p, cp);

 proc_lock(cp);
 sprunlock(cp);
}
