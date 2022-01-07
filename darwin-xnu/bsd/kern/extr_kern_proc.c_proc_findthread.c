
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct uthread {int uu_flag; scalar_t__ uu_proc; } ;
typedef scalar_t__ proc_t ;


 scalar_t__ PROC_NULL ;
 int UT_VFORK ;
 struct uthread* get_bsdthread_info (int ) ;
 scalar_t__ get_bsdthreadtask_info (int ) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 scalar_t__ proc_ref_locked (scalar_t__) ;

proc_t
proc_findthread(thread_t thread)
{
 proc_t p = PROC_NULL;
 struct uthread *uth;

 proc_list_lock();
 uth = get_bsdthread_info(thread);
 if (uth && (uth->uu_flag & UT_VFORK))
  p = uth->uu_proc;
 else
  p = (proc_t)(get_bsdthreadtask_info(thread));
 p = proc_ref_locked(p);
 proc_list_unlock();
 return(p);
}
