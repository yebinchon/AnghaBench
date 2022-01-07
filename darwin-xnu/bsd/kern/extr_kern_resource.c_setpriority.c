
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setpriority_args {int which; int who; int prio; } ;
struct puser_nice_args {int prio; int who; int* foundp; int* errorp; struct proc* curp; } ;
struct proc {int dummy; } ;
struct ppgrp_nice_args {int prio; int* foundp; int* errorp; struct proc* curp; } ;
struct pgrp {int dummy; } ;
typedef int int32_t ;


 int AUDIT_ARG (int ,int,...) ;
 int EIDRM ;
 int EINVAL ;
 int ESRCH ;
 int PGRP_DROPREF ;
 struct pgrp* PGRP_NULL ;







 int PROC_ALLPROCLIST ;
 struct proc* PROC_NULL ;
 int cmd ;
 int current_thread () ;
 int do_background_proc (struct proc*,struct proc*,int) ;
 int do_background_thread (int ,int) ;
 int donice (struct proc*,struct proc*,int) ;
 int kauth_cred_get () ;
 int kauth_cred_getuid (int ) ;
 int owner ;
 struct pgrp* pgfind (int) ;
 int pgrp_iterate (struct pgrp*,int ,int ,void*,int *,int *) ;
 int ppgrp_donice_callback ;
 struct proc* proc_find (int) ;
 int proc_iterate (int ,int ,void*,int *,int *) ;
 struct pgrp* proc_pgrp (struct proc*) ;
 int proc_rele (struct proc*) ;
 int proc_set_darwin_role (struct proc*,struct proc*,int) ;
 int puser_donice_callback ;
 int set_gpudeny_proc (struct proc*,struct proc*,int) ;
 int value32 ;

int
setpriority(struct proc *curp, struct setpriority_args *uap, int32_t *retval)
{
 struct proc *p;
 int found = 0, error = 0;
 int refheld = 0;

 AUDIT_ARG(cmd, uap->which);
 AUDIT_ARG(owner, uap->who, 0);
 AUDIT_ARG(value32, uap->prio);


 if (uap->who > 0x7fffffff)
  return (EINVAL);

 switch (uap->which) {

 case 129:
  if (uap->who == 0)
   p = curp;
  else {
   p = proc_find(uap->who);
   if (p == 0)
    break;
   refheld = 1;
  }
  error = donice(curp, p, uap->prio);
  found++;
  if (refheld != 0)
   proc_rele(p);
  break;

 case 130: {
  struct pgrp *pg = PGRP_NULL;
  struct ppgrp_nice_args ppgrp;

  if (uap->who == 0) {
   pg = proc_pgrp(curp);
   } else if ((pg = pgfind(uap->who)) == PGRP_NULL)
   break;

  ppgrp.curp = curp;
  ppgrp.prio = uap->prio;
  ppgrp.foundp = &found;
  ppgrp.errorp = &error;


  pgrp_iterate(pg, PGRP_DROPREF, ppgrp_donice_callback, (void *)&ppgrp, ((void*)0), ((void*)0));

  break;
 }

 case 128: {
  struct puser_nice_args punice;

  if (uap->who == 0)
   uap->who = kauth_cred_getuid(kauth_cred_get());

  punice.curp = curp;
  punice.prio = uap->prio;
  punice.who = uap->who;
  punice.foundp = &found;
  error = 0;
  punice.errorp = &error;
  proc_iterate(PROC_ALLPROCLIST, puser_donice_callback, (void *)&punice, ((void*)0), ((void*)0));

  break;
 }

 case 131: {

  if (uap->who != 0)
   return (EINVAL);

  error = do_background_thread(current_thread(), uap->prio);
  found++;
  break;
 }

 case 133: {
  if (uap->who == 0)
   p = curp;
  else {
   p = proc_find(uap->who);
   if (p == 0)
    break;
   refheld = 1;
  }

  error = do_background_proc(curp, p, uap->prio);

  found++;
  if (refheld != 0)
   proc_rele(p);
  break;
 }

 case 134: {
  if (uap->who == 0)
   return (EINVAL);

  p = proc_find(uap->who);
  if (p == PROC_NULL)
   break;

  error = set_gpudeny_proc(curp, p, uap->prio);

  found++;
  proc_rele(p);
  break;
 }

 case 132: {
  if (uap->who == 0) {
   p = curp;
  } else {
   p = proc_find(uap->who);
   if (p == PROC_NULL)
    break;
   refheld = 1;
  }

  error = proc_set_darwin_role(curp, p, uap->prio);

  found++;
  if (refheld != 0)
   proc_rele(p);
  break;
 }

 default:
  return (EINVAL);
 }
 if (found == 0)
  return (ESRCH);
 if (error == EIDRM) {
  *retval = -2;
  error = 0;
 }
 return (error);
}
