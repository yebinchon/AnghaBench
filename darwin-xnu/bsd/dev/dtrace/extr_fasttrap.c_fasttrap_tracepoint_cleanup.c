
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ user_addr_t ;
typedef int proc_t ;
typedef scalar_t__ pid_t ;
struct TYPE_8__ {scalar_t__ ftt_pid; scalar_t__ ftt_pc; scalar_t__ ftt_retired; TYPE_1__* ftt_proc; struct TYPE_8__* ftt_next; } ;
typedef TYPE_2__ fasttrap_tracepoint_t ;
struct TYPE_9__ {int ftb_mtx; TYPE_2__* ftb_data; } ;
typedef TYPE_3__ fasttrap_bucket_t ;
struct TYPE_11__ {scalar_t__ fttps_pc; scalar_t__ fttps_pid; } ;
struct TYPE_10__ {TYPE_3__* fth_table; } ;
struct TYPE_7__ {scalar_t__ ftpc_acount; } ;


 size_t FASTTRAP_TPOINTS_INDEX (scalar_t__,scalar_t__) ;
 int * PROC_NULL ;
 size_t fasttrap_cur_retired ;
 int fasttrap_retired_mtx ;
 TYPE_6__* fasttrap_retired_spec ;
 TYPE_5__ fasttrap_tpoints ;
 int fasttrap_tracepoint_remove (int *,TYPE_2__*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int * sprlock (scalar_t__) ;
 int sprunlock (int *) ;

__attribute__((used)) static void
fasttrap_tracepoint_cleanup(void)
{
 size_t i;
 pid_t pid = 0;
 user_addr_t pc;
 proc_t *p = PROC_NULL;
 fasttrap_tracepoint_t *tp = ((void*)0);
 lck_mtx_lock(&fasttrap_retired_mtx);
 fasttrap_bucket_t *bucket;
 for (i = 0; i < fasttrap_cur_retired; i++) {
  pc = fasttrap_retired_spec[i].fttps_pc;
  if (fasttrap_retired_spec[i].fttps_pid != pid) {
   pid = fasttrap_retired_spec[i].fttps_pid;
   if (p != PROC_NULL) {
    sprunlock(p);
   }
   if ((p = sprlock(pid)) == PROC_NULL) {
    pid = 0;
    continue;
   }
  }
  bucket = &fasttrap_tpoints.fth_table[FASTTRAP_TPOINTS_INDEX(pid, pc)];
  lck_mtx_lock(&bucket->ftb_mtx);
  for (tp = bucket->ftb_data; tp != ((void*)0); tp = tp->ftt_next) {
   if (pid == tp->ftt_pid && pc == tp->ftt_pc &&
   tp->ftt_proc->ftpc_acount != 0)
    break;
  }




  if (tp == ((void*)0) || tp->ftt_retired == 0) {
   lck_mtx_unlock(&bucket->ftb_mtx);
   continue;
  }
  fasttrap_tracepoint_remove(p, tp);
  lck_mtx_unlock(&bucket->ftb_mtx);
 }
 if (p != PROC_NULL) {
  sprunlock(p);
 }

 fasttrap_cur_retired = 0;

 lck_mtx_unlock(&fasttrap_retired_mtx);
}
