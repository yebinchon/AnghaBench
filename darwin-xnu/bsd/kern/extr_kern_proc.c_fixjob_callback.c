
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int dummy; } ;
struct pgrp {scalar_t__ pg_jobc; } ;
struct fixjob_iterargs {int entering; struct session* mysession; struct pgrp* pg; } ;
typedef int proc_t ;


 struct pgrp* PGRP_NULL ;
 int PROC_RETURNED ;
 struct session* SESSION_NULL ;
 int orphanpg (struct pgrp*) ;
 int pg_rele (struct pgrp*) ;
 int pgrp_lock (struct pgrp*) ;
 int pgrp_unlock (struct pgrp*) ;
 struct pgrp* proc_pgrp (int ) ;
 struct session* proc_session (int ) ;
 int session_rele (struct session*) ;

int
fixjob_callback(proc_t p, void * arg)
{
 struct fixjob_iterargs *fp;
 struct pgrp * pg, *hispg;
 struct session * mysession, *hissess;
 int entering;

 fp = (struct fixjob_iterargs *)arg;
 pg = fp->pg;
 mysession = fp->mysession;
 entering = fp->entering;

 hispg = proc_pgrp(p);
 hissess = proc_session(p);

 if ((hispg != pg) &&
     (hissess == mysession)) {
  pgrp_lock(hispg);
  if (entering) {
   hispg->pg_jobc++;
   pgrp_unlock(hispg);
  } else if (--hispg->pg_jobc == 0) {
   pgrp_unlock(hispg);
   orphanpg(hispg);
  } else
   pgrp_unlock(hispg);
 }
 if (hissess != SESSION_NULL)
  session_rele(hissess);
 if (hispg != PGRP_NULL)
  pg_rele(hispg);

 return(PROC_RETURNED);
}
