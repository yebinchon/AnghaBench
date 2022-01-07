
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int * thread_t ;
typedef scalar_t__ task_t ;
typedef TYPE_1__* proc_t ;
typedef int coalition_t ;
typedef int UInt32 ;
struct TYPE_9__ {int p_flag; int p_stat; int p_memstat_state; } ;


 int FALSE ;
 int OSBitAndAtomic (int ,int *) ;
 int OSBitOrAtomic (int,int *) ;
 int P_LP64 ;
 int P_MEMSTAT_INTERNAL ;
 int SRUN ;
 scalar_t__ TASK_NULL ;
 int * fork_create_child (scalar_t__,int *,TYPE_1__*,int,int const,int const,int ) ;
 TYPE_1__* forkproc (TYPE_1__*) ;
 int forkproc_free (TYPE_1__*) ;
 scalar_t__ get_threadtask (int *) ;
 int pinsertchild (TYPE_1__*,TYPE_1__*) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int const task_get_64bit_data (scalar_t__) ;

thread_t
cloneproc(task_t parent_task, coalition_t *parent_coalitions, proc_t parent_proc, int inherit_memory, int memstat_internal)
{

#pragma unused(memstat_internal)

 task_t child_task;
 proc_t child_proc;
 thread_t child_thread = ((void*)0);

 if ((child_proc = forkproc(parent_proc)) == ((void*)0)) {

  goto bad;
 }
 const int parent_64bit_addr = parent_proc->p_flag & P_LP64;
 const int parent_64bit_data = (parent_task == TASK_NULL) ? parent_64bit_addr : task_get_64bit_data(parent_task);

 child_thread = fork_create_child(parent_task,
          parent_coalitions,
          child_proc,
          inherit_memory,
          parent_64bit_addr,
          parent_64bit_data,
          FALSE);

 if (child_thread == ((void*)0)) {




  forkproc_free(child_proc);
  goto bad;
 }

 child_task = get_threadtask(child_thread);
 if (parent_64bit_addr) {
  OSBitOrAtomic(P_LP64, (UInt32 *)&child_proc->p_flag);
 } else {
  OSBitAndAtomic(~((uint32_t)P_LP64), (UInt32 *)&child_proc->p_flag);
 }
 pinsertchild(parent_proc, child_proc);




 child_proc->p_stat = SRUN;
bad:
 return(child_thread);
}
