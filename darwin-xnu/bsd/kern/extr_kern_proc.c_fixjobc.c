
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int dummy; } ;
struct pgrp {scalar_t__ pg_jobc; struct session* pg_session; } ;
struct fixjob_iterargs {int entering; struct session* mysession; struct pgrp* pg; } ;
typedef scalar_t__ proc_t ;
typedef scalar_t__ boolean_t ;


 struct pgrp* PGRP_NULL ;
 scalar_t__ PROC_NULL ;
 struct session* SESSION_NULL ;
 scalar_t__ current_proc () ;
 int fixjob_callback ;
 int orphanpg (struct pgrp*) ;
 int pg_rele (struct pgrp*) ;
 int pgrp_lock (struct pgrp*) ;
 int pgrp_unlock (struct pgrp*) ;
 int proc_childrenwalk (scalar_t__,int ,struct fixjob_iterargs*) ;
 scalar_t__ proc_parent (scalar_t__) ;
 scalar_t__ proc_parent_is_currentproc (scalar_t__) ;
 struct pgrp* proc_pgrp (scalar_t__) ;
 int proc_rele (scalar_t__) ;
 struct session* proc_session (scalar_t__) ;
 int session_rele (struct session*) ;

void
fixjobc(proc_t p, struct pgrp *pgrp, int entering)
{
 struct pgrp *hispgrp = PGRP_NULL;
 struct session *hissess = SESSION_NULL;
 struct session *mysession = pgrp->pg_session;
 proc_t parent;
 struct fixjob_iterargs fjarg;
 boolean_t proc_parent_self;






 proc_parent_self = proc_parent_is_currentproc(p);
 if (proc_parent_self)
  parent = current_proc();
 else
  parent = proc_parent(p);

 if (parent != PROC_NULL) {
  hispgrp = proc_pgrp(parent);
  hissess = proc_session(parent);
  if (!proc_parent_self)
   proc_rele(parent);
 }






 if ((hispgrp != pgrp) &&
     (hissess == mysession)) {
  pgrp_lock(pgrp);
  if (entering) {
   pgrp->pg_jobc++;
   pgrp_unlock(pgrp);
   }else if (--pgrp->pg_jobc == 0) {
   pgrp_unlock(pgrp);
   orphanpg(pgrp);
  } else
   pgrp_unlock(pgrp);
 }

 if (hissess != SESSION_NULL)
  session_rele(hissess);
 if (hispgrp != PGRP_NULL)
  pg_rele(hispgrp);






 fjarg.pg = pgrp;
 fjarg.mysession = mysession;
 fjarg.entering = entering;
 proc_childrenwalk(p, fixjob_callback, &fjarg);
}
