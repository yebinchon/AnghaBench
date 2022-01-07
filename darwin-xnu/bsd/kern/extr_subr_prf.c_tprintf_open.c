
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tpr_t ;
struct session {scalar_t__ s_ttyvp; } ;
struct proc {int p_flag; } ;


 int P_CONTROLT ;
 struct session* SESSION_NULL ;
 struct session* proc_session (struct proc*) ;
 int session_rele (struct session*) ;

tpr_t
tprintf_open(struct proc *p)
{
 struct session * sessp;

 sessp = proc_session(p);

 if (p->p_flag & P_CONTROLT && sessp->s_ttyvp) {
  return ((tpr_t)sessp);
 }
 if (sessp != SESSION_NULL)
  session_rele(sessp);

 return ((tpr_t) ((void*)0));
}
