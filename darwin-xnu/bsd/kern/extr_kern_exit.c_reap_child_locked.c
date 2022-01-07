
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef TYPE_2__* proc_t ;
typedef scalar_t__ pid_t ;
typedef int * caddr_t ;
struct TYPE_23__ {int p_xstat; int si_status; int p_flag; char* p_comm; int p_slock; int p_dtrace_sprlock; int p_fdmlock; int p_ucred_mlock; int p_mlock; int p_listflag; int p_stat; int p_children; int p_childrencnt; int p_ucred; int p_exit_reason; struct TYPE_23__* p_ru; int ri; TYPE_1__* p_stats; int ru; int si_uid; int si_code; int p_pid; int si_pid; scalar_t__ p_oppid; } ;
struct TYPE_22__ {int ri_child; int p_cru; } ;


 int AUDIT_SESSION_PROCEXIT (TYPE_2__*) ;
 int CLD_CONTINUED ;
 int FREE_ZONE (TYPE_2__*,int,int ) ;
 scalar_t__ IS_VALID_CRED (int ) ;
 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_REMOVE (TYPE_2__*,int ) ;
 int M_PROC ;
 int M_ZOMBIE ;
 int NOTE_EXIT ;
 int NOTE_REAP ;
 TYPE_2__* PROC_NULL ;
 int P_LIST_DEADPARENT ;
 int P_LIST_INHASH ;
 int P_LIST_WAITING ;
 int P_NOCLDWAIT ;
 int SIGCHLD ;
 int chgproccnt (int ,int) ;
 TYPE_2__* initproc ;
 int kauth_cred_getruid (int ) ;
 int kauth_cred_unref (int *) ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_spin_destroy (int *,int ) ;
 int leavepgrp (TYPE_2__*) ;
 int nprocs ;
 int os_reason_free (int ) ;
 int p_hash ;
 int p_list ;
 int p_sibling ;
 int persona_proc_drop (TYPE_2__*) ;
 int printf (char*,char*) ;
 int proc_checkdeadrefs (TYPE_2__*) ;
 int proc_fdmlock_grp ;
 TYPE_2__* proc_find (scalar_t__) ;
 int proc_knote (TYPE_2__*,int) ;
 int proc_knote_drain (TYPE_2__*) ;
 int proc_lck_grp ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int proc_lock (TYPE_2__*) ;
 int proc_mlock_grp ;
 int proc_rele (TYPE_2__*) ;
 int proc_reparentlocked (TYPE_2__*,TYPE_2__*,int,int ) ;
 int proc_slock_grp ;
 int proc_ucred_mlock_grp ;
 int proc_unlock (TYPE_2__*) ;
 int psignal (TYPE_2__*,int ) ;
 int ruadd (int *,int *) ;
 int update_rusage_info_child (int *,int *) ;
 int wakeup (int *) ;

__attribute__((used)) static int
reap_child_locked(proc_t parent, proc_t child, int deadparent, int reparentedtoinit, int locked, int droplock)
{
 proc_t trace_parent = PROC_NULL;

 if (locked == 1)
  proc_list_unlock();
 if (child->p_oppid) {
  int knote_hint;
  pid_t oppid;

  proc_lock(child);
  oppid = child->p_oppid;
  child->p_oppid = 0;
  knote_hint = NOTE_EXIT | (child->p_xstat & 0xffff);
  proc_unlock(child);

  if ((trace_parent = proc_find(oppid))
   && !((trace_parent == initproc) && reparentedtoinit)) {

   if (trace_parent != initproc) {





    proc_lock(trace_parent);
    trace_parent->si_pid = child->p_pid;
    trace_parent->si_status = child->p_xstat;
    trace_parent->si_code = CLD_CONTINUED;
    trace_parent->si_uid = kauth_cred_getruid(child->p_ucred);
    proc_unlock(trace_parent);
   }
   proc_reparentlocked(child, trace_parent, 1, 0);


   proc_knote(child, knote_hint);

   psignal(trace_parent, SIGCHLD);
   proc_list_lock();
   wakeup((caddr_t)trace_parent);
   child->p_listflag &= ~P_LIST_WAITING;
   wakeup(&child->p_stat);
   proc_list_unlock();
   proc_rele(trace_parent);
   if ((locked == 1) && (droplock == 0))
    proc_list_lock();
   return (0);
  }







  proc_knote(child, knote_hint);

  if (trace_parent != PROC_NULL) {
   proc_rele(trace_parent);
  }
 }

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
 proc_knote(child, NOTE_REAP);
#pragma clang diagnostic pop

 proc_knote_drain(child);

 child->p_xstat = 0;
 if (child->p_ru) {
  proc_lock(parent);
  if (!(parent->p_flag & P_NOCLDWAIT))

   ruadd(&parent->p_stats->p_cru, &child->p_ru->ru);
  update_rusage_info_child(&parent->p_stats->ri_child, &child->p_ru->ri);
  proc_unlock(parent);
  FREE_ZONE(child->p_ru, sizeof *child->p_ru, M_ZOMBIE);
  child->p_ru = ((void*)0);
 } else {
  printf("Warning : lost p_ru for %s\n", child->p_comm);
 }

 AUDIT_SESSION_PROCEXIT(child);
 (void)chgproccnt(kauth_cred_getruid(child->p_ucred), -1);

 os_reason_free(child->p_exit_reason);




 if (IS_VALID_CRED(child->p_ucred)) {
  kauth_cred_unref(&child->p_ucred);
 }







 leavepgrp(child);

 proc_list_lock();
 LIST_REMOVE(child, p_list);
 parent->p_childrencnt--;
 LIST_REMOVE(child, p_sibling);

 if ((deadparent != 0) && (LIST_EMPTY(&parent->p_children)))
  wakeup((caddr_t)parent);
 child->p_listflag &= ~P_LIST_WAITING;
 wakeup(&child->p_stat);


 LIST_REMOVE(child, p_hash);
 child->p_listflag &= ~P_LIST_INHASH;
 proc_checkdeadrefs(child);
 nprocs--;

 if (deadparent) {




  child->p_listflag |= P_LIST_DEADPARENT;
 }

 proc_list_unlock();
 lck_mtx_destroy(&child->p_mlock, proc_lck_grp);
 lck_mtx_destroy(&child->p_ucred_mlock, proc_lck_grp);
 lck_mtx_destroy(&child->p_fdmlock, proc_lck_grp);



 lck_spin_destroy(&child->p_slock, proc_lck_grp);


 FREE_ZONE(child, sizeof *child, M_PROC);
 if ((locked == 1) && (droplock == 0))
  proc_list_lock();

 return (1);
}
