
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_6__ {scalar_t__ ftpc_rcount; scalar_t__ ftpc_acount; int ftpc_mtx; struct TYPE_6__* ftpc_next; int ftpc_pid; } ;
typedef TYPE_1__ fasttrap_proc_t ;
struct TYPE_7__ {int ftb_mtx; int ftb_data; } ;
typedef TYPE_2__ fasttrap_bucket_t ;
struct TYPE_8__ {TYPE_2__* fth_table; } ;


 int ASSERT (int) ;
 size_t FASTTRAP_PROCS_INDEX (int ) ;
 int fasttrap_lck_grp ;
 TYPE_4__ fasttrap_procs ;
 int kmem_free (TYPE_1__*,int) ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

__attribute__((used)) static void
fasttrap_proc_release(fasttrap_proc_t *proc)
{
 fasttrap_bucket_t *bucket;
 fasttrap_proc_t *fprc, **fprcp;
 pid_t pid = proc->ftpc_pid;

 lck_mtx_lock(&proc->ftpc_mtx);

 ASSERT(proc->ftpc_rcount != 0);
 ASSERT(proc->ftpc_acount <= proc->ftpc_rcount);

 if (--proc->ftpc_rcount != 0) {
  lck_mtx_unlock(&proc->ftpc_mtx);
  return;
 }

 lck_mtx_unlock(&proc->ftpc_mtx);





  ASSERT(proc->ftpc_acount == 0);

 bucket = &fasttrap_procs.fth_table[FASTTRAP_PROCS_INDEX(pid)];
 lck_mtx_lock(&bucket->ftb_mtx);

 fprcp = (fasttrap_proc_t **)&bucket->ftb_data;
 while ((fprc = *fprcp) != ((void*)0)) {
  if (fprc == proc)
   break;

  fprcp = &fprc->ftpc_next;
 }




 ASSERT(fprc != ((void*)0));

 *fprcp = fprc->ftpc_next;

 lck_mtx_unlock(&bucket->ftb_mtx);





 lck_mtx_destroy(&fprc->ftpc_mtx, fasttrap_lck_grp);

 kmem_free(fprc, sizeof (fasttrap_proc_t));
}
