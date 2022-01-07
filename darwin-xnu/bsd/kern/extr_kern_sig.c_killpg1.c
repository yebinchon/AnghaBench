
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgrp {int dummy; } ;
struct killpg1_iterargs {scalar_t__ nfound; int signum; int uc; int curproc; } ;
struct killpg1_filtargs {int posix; int curproc; } ;
typedef int proc_t ;
typedef int kauth_cred_t ;


 int EPERM ;
 int ESRCH ;
 int PGRP_DROPREF ;
 int PROC_ALLPROCLIST ;
 int PROC_ZOMBPROCLIST ;
 int kauth_cred_proc_ref (int ) ;
 int kauth_cred_unref (int *) ;
 int killpg1_allfilt ;
 int killpg1_callback ;
 int killpg1_pgrpfilt ;
 struct pgrp* pgfind (int) ;
 int pgrp_iterate (struct pgrp*,int ,int ,struct killpg1_iterargs*,int ,int *) ;
 int proc_iterate (int,int ,struct killpg1_iterargs*,int ,struct killpg1_filtargs*) ;
 struct pgrp* proc_pgrp (int ) ;

int
killpg1(proc_t curproc, int signum, int pgid, int all, int posix)
{
 kauth_cred_t uc;
 struct pgrp *pgrp;
 int error = 0;

 uc = kauth_cred_proc_ref(curproc);
 struct killpg1_iterargs karg = {
  .curproc = curproc, .uc = uc, .nfound = 0, .signum = signum
 };

 if (all) {



  struct killpg1_filtargs kfarg = {
   .posix = posix, .curproc = curproc
  };
  proc_iterate(PROC_ALLPROCLIST | PROC_ZOMBPROCLIST, killpg1_callback,
    &karg, killpg1_allfilt, &kfarg);
 } else {
  if (pgid == 0) {



   pgrp = proc_pgrp(curproc);
   } else {
   pgrp = pgfind(pgid);
   if (pgrp == ((void*)0)) {
    error = ESRCH;
    goto out;
   }
  }


  pgrp_iterate(pgrp, PGRP_DROPREF, killpg1_callback, &karg,
    killpg1_pgrpfilt, ((void*)0));
 }
 error = (karg.nfound > 0 ? 0 : (posix ? EPERM : ESRCH));
out:
 kauth_cred_unref(&uc);
 return (error);
}
