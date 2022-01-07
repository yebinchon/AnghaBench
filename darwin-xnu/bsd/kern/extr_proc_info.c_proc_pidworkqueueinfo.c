
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_workqueueinfo {int dummy; } ;
typedef int proc_t ;


 int ESRCH ;
 int bzero (struct proc_workqueueinfo*,int) ;
 int fill_procworkqueue (int ,struct proc_workqueueinfo*) ;

int
proc_pidworkqueueinfo(proc_t p, struct proc_workqueueinfo *pwqinfo)
{
 int error = 0;

 bzero(pwqinfo, sizeof(struct proc_workqueueinfo));

 error = fill_procworkqueue(p, pwqinfo);
 if (error)
  return(ESRCH);
 else
  return(0);

}
