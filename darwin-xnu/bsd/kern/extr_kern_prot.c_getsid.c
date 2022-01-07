
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int s_sid; } ;
struct getsid_args {scalar_t__ pid; } ;
typedef int proc_t ;
typedef int int32_t ;


 int ESRCH ;
 int proc_find (scalar_t__) ;
 int proc_rele (int ) ;
 struct session* proc_session (int ) ;
 int session_rele (struct session*) ;

int
getsid(proc_t p, struct getsid_args *uap, int32_t *retval)
{
 proc_t pt;
 int refheld = 0;
 struct session * sessp;

 pt = p;
 if (uap->pid == 0)
  goto found;

 if ((pt = proc_find(uap->pid)) == 0)
  return (ESRCH);
 refheld = 1;
found:
 sessp = proc_session(pt);
 *retval = sessp->s_sid;
 session_rele(sessp);

 if (refheld != 0)
  proc_rele(pt);
 return (0);
}
