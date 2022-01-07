
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef int thread_t ;
typedef int task_t ;
typedef TYPE_2__* proc_t ;
typedef int int32_t ;
struct TYPE_10__ {scalar_t__ p_vforkact; int p_lflag; } ;
struct TYPE_9__ {int uu_flag; int uu_vforkmask; int uu_sigmask; scalar_t__ uu_proc; scalar_t__ uu_userstate; } ;


 int P_LINVFORK ;
 int UT_SETUID ;
 int UT_VFORK ;
 int UT_WASSETUID ;
 int act_thread_catt (scalar_t__) ;
 int current_thread () ;
 TYPE_2__* get_bsdtask_info (int ) ;
 TYPE_1__* get_bsdthread_info (int ) ;
 int get_threadtask (scalar_t__) ;
 int proc_lock (TYPE_2__*) ;
 int proc_unlock (TYPE_2__*) ;
 int proc_vfork_end (TYPE_2__*) ;
 int thread_set_parent (int ,int) ;

void
vfork_return(proc_t child_proc, int32_t *retval, int rval)
{
 task_t parent_task = get_threadtask(child_proc->p_vforkact);
 proc_t parent_proc = get_bsdtask_info(parent_task);
 thread_t th = current_thread();
 uthread_t uth = get_bsdthread_info(th);

 act_thread_catt(uth->uu_userstate);


 proc_vfork_end(parent_proc);


 uth->uu_userstate = 0;
 uth->uu_flag &= ~UT_VFORK;

 if (uth->uu_flag & UT_WASSETUID) {
  uth->uu_flag |= UT_SETUID;
  uth->uu_flag &= UT_WASSETUID;
 }
 uth->uu_proc = 0;
 uth->uu_sigmask = uth->uu_vforkmask;

 proc_lock(child_proc);
 child_proc->p_lflag &= ~P_LINVFORK;
 child_proc->p_vforkact = 0;
 proc_unlock(child_proc);

 thread_set_parent(th, rval);

 if (retval) {
  retval[0] = rval;
  retval[1] = 0;
 }
}
