
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vfs_context_t ;
struct sd_iterargs {int setsdstate; int activecount; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_6__ {int p_shutdownstate; scalar_t__ p_stat; int p_pid; int p_comm; scalar_t__ exit_thread; } ;


 int BSDDBG_CODE (int ,int ) ;
 int BSD_PROC_FRCEXIT ;
 int DBG_BSD_PROC ;
 int DBG_FUNC_NONE ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int ,int,int ,int ) ;
 int PROC_RETURNED ;
 scalar_t__ SZOMB ;
 int THREAD_CONTINUE_NULL ;
 scalar_t__ current_thread () ;
 int exit1 (TYPE_1__*,int,int*) ;
 int printf (char*) ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int sd_log (int ,char*,int ,int ) ;
 int thread_block (int ) ;
 int vfs_context_current () ;

__attribute__((used)) static int
sd_callback3(proc_t p, void * args)
{
 struct sd_iterargs * sd = (struct sd_iterargs *)args;
 vfs_context_t ctx = vfs_context_current();

 int setsdstate = sd->setsdstate;

 proc_lock(p);
 p->p_shutdownstate = setsdstate;
 if (p->p_stat != SZOMB) {







  if (p->exit_thread) {
   proc_unlock(p);

   thread_block(THREAD_CONTINUE_NULL);
  } else {
   p->exit_thread = current_thread();
   printf(".");

   sd_log(ctx, "%s[%d] had to be forced closed with exit1().\n", p->p_comm, p->p_pid);

   proc_unlock(p);
   KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_PROC, BSD_PROC_FRCEXIT) | DBG_FUNC_NONE,
           p->p_pid, 0, 1, 0, 0);
   sd->activecount++;
   exit1(p, 1, (int *)((void*)0));
  }
 } else {
  proc_unlock(p);
 }

 return PROC_RETURNED;
}
