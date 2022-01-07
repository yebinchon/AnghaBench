
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_15__ {struct TYPE_15__* p_stats; struct TYPE_15__* p_sigacts; int p_rcall; int p_ucred; int p_slock; int p_dtrace_sprlock; int p_ucred_mlock; int p_fdmlock; int p_mlock; int * p_textvp; scalar_t__ vm_shm; int * p_limit; } ;


 int AUDIT_SESSION_PROCEXIT (TYPE_1__*) ;
 int FREE_ZONE (TYPE_1__*,int,int ) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int M_PROC ;
 int M_PSTATS ;
 int M_SIGACTS ;
 int fdfree (TYPE_1__*) ;
 int kauth_cred_unref (int *) ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_spin_destroy (int *,int ) ;
 int nprocs ;
 int p_hash ;
 int persona_proc_drop (TYPE_1__*) ;
 int proc_checkdeadrefs (TYPE_1__*) ;
 int proc_fdmlock_grp ;
 int proc_lck_grp ;
 int proc_limitdrop (TYPE_1__*,int ) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int proc_mlock_grp ;
 int proc_signalend (TYPE_1__*,int ) ;
 int proc_slock_grp ;
 int proc_transend (TYPE_1__*,int ) ;
 int proc_ucred_mlock_grp ;
 int pth_proc_hashdelete (TYPE_1__*) ;
 int shmexec (TYPE_1__*) ;
 int stopprofclock (TYPE_1__*) ;
 int thread_call_free (int ) ;
 int vnode_rele (int *) ;

void
forkproc_free(proc_t p)
{
 proc_signalend(p, 0);
 proc_transend(p, 0);






 proc_limitdrop(p, 0);
 p->p_limit = ((void*)0);
 fdfree(p);






 if (p->p_textvp) {
  vnode_rele(p->p_textvp);
  p->p_textvp = ((void*)0);
 }


 stopprofclock(p);


 AUDIT_SESSION_PROCEXIT(p);
 lck_mtx_destroy(&p->p_mlock, proc_lck_grp);
 lck_mtx_destroy(&p->p_fdmlock, proc_lck_grp);
 lck_mtx_destroy(&p->p_ucred_mlock, proc_lck_grp);



 lck_spin_destroy(&p->p_slock, proc_lck_grp);



 kauth_cred_unref(&p->p_ucred);

 proc_list_lock();

 nprocs--;


 LIST_REMOVE(p, p_hash);

 proc_list_unlock();

 thread_call_free(p->p_rcall);


 FREE_ZONE(p->p_sigacts, sizeof *p->p_sigacts, M_SIGACTS);
 p->p_sigacts = ((void*)0);
 FREE_ZONE(p->p_stats, sizeof *p->p_stats, M_PSTATS);
 p->p_stats = ((void*)0);

 proc_checkdeadrefs(p);
 FREE_ZONE(p, sizeof *p, M_PROC);
}
