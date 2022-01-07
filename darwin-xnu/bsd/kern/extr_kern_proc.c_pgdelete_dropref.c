
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {struct session* t_session; struct session* t_pgrp; } ;
struct session {scalar_t__ pg_membercnt; scalar_t__ pg_refcount; int s_listflags; scalar_t__ s_count; int pg_mlock; int s_mlock; struct session* pg_session; int s_ttypgrpid; int pg_listflags; } ;
struct pgrp {scalar_t__ pg_membercnt; scalar_t__ pg_refcount; int s_listflags; scalar_t__ s_count; int pg_mlock; int s_mlock; struct pgrp* pg_session; int s_ttypgrpid; int pg_listflags; } ;


 int FREE_ZONE (struct session*,int,int ) ;
 int LIST_REMOVE (struct session*,int ) ;
 int M_PGRP ;
 int M_SESSION ;
 int NO_PID ;
 int PGRP_FLAG_DEAD ;
 int PGRP_FLAG_TERMINATE ;
 struct tty* SESSION_TP (struct session*) ;
 int S_LIST_DEAD ;
 int S_LIST_TERM ;
 struct tty* TTY_NULL ;
 int lck_mtx_destroy (int *,int ) ;
 int panic (char*) ;
 int pg_hash ;
 int pgrp_lock (struct session*) ;
 int pgrp_unlock (struct session*) ;
 int proc_lck_grp ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int proc_mlock_grp ;
 int s_hash ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

__attribute__((used)) static void
pgdelete_dropref(struct pgrp *pgrp)
{
 struct tty *ttyp;
 int emptypgrp = 1;
 struct session *sessp;


 pgrp_lock(pgrp);
 if (pgrp->pg_membercnt != 0) {
  emptypgrp = 0;
 }
 pgrp_unlock(pgrp);

 proc_list_lock();
 pgrp->pg_refcount--;
 if ((emptypgrp == 0) || (pgrp->pg_membercnt != 0)) {
  proc_list_unlock();
  return;
 }

 pgrp->pg_listflags |= PGRP_FLAG_TERMINATE;

 if (pgrp->pg_refcount > 0) {
  proc_list_unlock();
  return;
 }

 pgrp->pg_listflags |= PGRP_FLAG_DEAD;
 LIST_REMOVE(pgrp, pg_hash);

 proc_list_unlock();

 ttyp = SESSION_TP(pgrp->pg_session);
 if (ttyp != TTY_NULL) {
  if (ttyp->t_pgrp == pgrp) {
   tty_lock(ttyp);

   if (ttyp->t_pgrp == pgrp) {
    ttyp->t_pgrp = ((void*)0);
    pgrp->pg_session->s_ttypgrpid = NO_PID;
   }
   tty_unlock(ttyp);
  }
 }

 proc_list_lock();

 sessp = pgrp->pg_session;
 if ((sessp->s_listflags & (S_LIST_TERM | S_LIST_DEAD)) != 0)
   panic("pg_deleteref: manipulating refs of already terminating session");
 if (--sessp->s_count == 0) {
  if ((sessp->s_listflags & (S_LIST_TERM | S_LIST_DEAD)) != 0)
   panic("pg_deleteref: terminating already terminated session");
  sessp->s_listflags |= S_LIST_TERM;
  ttyp = SESSION_TP(sessp);
  LIST_REMOVE(sessp, s_hash);
  proc_list_unlock();
  if (ttyp != TTY_NULL) {
   tty_lock(ttyp);
   if (ttyp->t_session == sessp)
    ttyp->t_session = ((void*)0);
   tty_unlock(ttyp);
  }
  proc_list_lock();
  sessp->s_listflags |= S_LIST_DEAD;
  if (sessp->s_count != 0)
   panic("pg_deleteref: freeing session in use");
  proc_list_unlock();



  lck_mtx_destroy(&sessp->s_mlock, proc_lck_grp);

  FREE_ZONE(sessp, sizeof(struct session), M_SESSION);
 } else
  proc_list_unlock();



 lck_mtx_destroy(&pgrp->pg_mlock, proc_lck_grp);

 FREE_ZONE(pgrp, sizeof(*pgrp), M_PGRP);
}
