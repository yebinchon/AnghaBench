
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* proc_t ;
typedef int caddr_t ;
struct TYPE_5__ {scalar_t__ p_stat; int task; int p_flag; } ;


 int OSBitAndAtomic (int ,int *) ;
 TYPE_1__* PROC_NULL ;
 scalar_t__ P_CONTINUED ;
 scalar_t__ SSTOP ;
 int proc_list_lock () ;
 int proc_list_unlock () ;
 int task_suspend_internal (int ) ;
 int wakeup (int ) ;

__attribute__((used)) static void
stop(proc_t p, proc_t parent)
{
 OSBitAndAtomic(~((uint32_t)P_CONTINUED), &p->p_flag);
 if ((parent != PROC_NULL) && (parent->p_stat != SSTOP)) {
  proc_list_lock();
  wakeup((caddr_t)parent);
  proc_list_unlock();
 }
 (void) task_suspend_internal(p->task);
}
