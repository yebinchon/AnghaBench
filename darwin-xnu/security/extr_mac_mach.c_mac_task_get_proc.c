
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int dummy; } ;
struct proc {int dummy; } ;


 struct task* current_task () ;
 struct proc* proc_find (int) ;
 int proc_rele (struct proc*) ;
 struct proc* proc_self () ;
 struct task* proc_task (struct proc*) ;
 int task_pid (struct task*) ;

__attribute__((used)) static struct proc *
mac_task_get_proc(struct task *task)
{
 if (task == current_task())
  return proc_self();





 int pid = task_pid(task);
 struct proc *p = proc_find(pid);

 if (p != ((void*)0)) {
  if (proc_task(p) == task)
   return p;
  proc_rele(p);
 }
 return ((void*)0);
}
