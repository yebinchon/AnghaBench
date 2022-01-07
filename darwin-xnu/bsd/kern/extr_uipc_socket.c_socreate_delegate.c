
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct proc {int dummy; } ;
typedef scalar_t__ pid_t ;


 int ESRCH ;
 struct proc* PROC_NULL ;
 int current_proc () ;
 struct proc* proc_find (scalar_t__) ;
 int proc_rele (struct proc*) ;
 scalar_t__ proc_selfpid () ;
 int socreate_internal (int,struct socket**,int,int,int ,int ,struct proc*) ;

int
socreate_delegate(int dom, struct socket **aso, int type, int proto, pid_t epid)
{
 int error = 0;
 struct proc *ep = PROC_NULL;

 if ((proc_selfpid() != epid) && ((ep = proc_find(epid)) == PROC_NULL)) {
  error = ESRCH;
  goto done;
 }

 error = socreate_internal(dom, aso, type, proto, current_proc(), 0, ep);





done:
 if (ep != PROC_NULL)
  proc_rele(ep);

 return (error);
}
