
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct getpgid_args {scalar_t__ pid; } ;
typedef TYPE_1__* proc_t ;
typedef int int32_t ;
struct TYPE_5__ {int p_pgrpid; } ;


 int ESRCH ;
 TYPE_1__* proc_find (scalar_t__) ;
 int proc_rele (TYPE_1__*) ;

int
getpgid(proc_t p, struct getpgid_args *uap, int32_t *retval)
{
 proc_t pt;
 int refheld = 0;

 pt = p;
 if (uap->pid == 0)
  goto found;

 if ((pt = proc_find(uap->pid)) == 0)
  return (ESRCH);
 refheld = 1;
found:
 *retval = pt->p_pgrpid;
 if (refheld != 0)
  proc_rele(pt);
 return (0);
}
