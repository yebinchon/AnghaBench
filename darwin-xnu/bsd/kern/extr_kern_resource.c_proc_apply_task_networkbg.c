
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef void* proc_t ;
typedef int pid_t ;


 void* PROC_NULL ;
 int assert (int) ;
 int do_background_socket (void*,int ) ;
 void* proc_find (int ) ;
 int proc_pid (void*) ;
 int proc_rele (void*) ;

void
proc_apply_task_networkbg(void * bsd_info, thread_t thread)
{
 assert(bsd_info != PROC_NULL);

 pid_t pid = proc_pid((proc_t)bsd_info);

 proc_t p = proc_find(pid);

 if (p != PROC_NULL) {
  assert(p == (proc_t)bsd_info);

  do_background_socket(p, thread);
  proc_rele(p);
 }
}
