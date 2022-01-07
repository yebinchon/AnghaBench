
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct proc_threadinfo_internal {int dummy; } ;
struct proc_threadinfo {int dummy; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int task; } ;


 int ESRCH ;
 int bzero (struct proc_threadinfo*,int) ;
 int fill_taskthreadinfo (int ,int ,int,struct proc_threadinfo_internal*,int *,int *) ;

int
proc_pidthreadinfo(proc_t p, uint64_t arg, bool thuniqueid, struct proc_threadinfo *pthinfo)
{
 int error = 0;
 uint64_t threadaddr = (uint64_t)arg;

 bzero(pthinfo, sizeof(struct proc_threadinfo));

 error = fill_taskthreadinfo(p->task, threadaddr, thuniqueid, (struct proc_threadinfo_internal *)pthinfo, ((void*)0), ((void*)0));
 if (error)
  return(ESRCH);
 else
  return(0);

}
