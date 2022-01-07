
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ proc_t ;
typedef int pid_t ;


 scalar_t__ PROC_NULL ;
 int gsignal (int ,int) ;
 scalar_t__ proc_find (int ) ;
 int proc_rele (scalar_t__) ;
 int psignal (scalar_t__,int) ;

void
pgsigio(pid_t pgid, int sig)
{
 proc_t p = PROC_NULL;

 if (pgid < 0)
  gsignal(-(pgid), sig);

 else if (pgid > 0 && (p = proc_find(pgid)) != 0)
  psignal(p, sig);
 if (p != PROC_NULL)
  proc_rele(p);
}
