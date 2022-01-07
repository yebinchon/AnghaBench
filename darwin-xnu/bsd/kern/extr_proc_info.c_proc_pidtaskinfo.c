
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_t ;
struct proc_taskinfo_internal {int dummy; } ;
struct proc_taskinfo {int dummy; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int task; } ;


 int bzero (struct proc_taskinfo*,int) ;
 int fill_taskprocinfo (int ,struct proc_taskinfo_internal*) ;

int
proc_pidtaskinfo(proc_t p, struct proc_taskinfo * ptinfo)
{
 task_t task;

 task = p->task;

 bzero(ptinfo, sizeof(struct proc_taskinfo));
 fill_taskprocinfo(task, (struct proc_taskinfo_internal *)ptinfo);

 return(0);
}
