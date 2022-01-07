
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* task_t ;
struct TYPE_4__ {int t_flags; int bsd_info; } ;


 int OSDecrementAtomic (int*) ;
 int OSIncrementAtomic (int*) ;
 int TF_TELEMETRY ;
 int assert (int) ;
 int printf (char*,char*,int) ;
 char* proc_name_address (int ) ;
 int task_lock_assert_owned (TYPE_1__*) ;
 int telemetry_active_tasks ;

void
telemetry_task_ctl_locked(task_t task, uint32_t reasons, int enable_disable)
{
 uint32_t origflags;

 assert((reasons != 0) && ((reasons | TF_TELEMETRY) == TF_TELEMETRY));

 task_lock_assert_owned(task);

 origflags = task->t_flags;

 if (enable_disable == 1) {
  task->t_flags |= reasons;
  if ((origflags & TF_TELEMETRY) == 0) {
   OSIncrementAtomic(&telemetry_active_tasks);



  }
 } else {
  task->t_flags &= ~reasons;
  if (((origflags & TF_TELEMETRY) != 0) && ((task->t_flags & TF_TELEMETRY) == 0)) {




   OSDecrementAtomic(&telemetry_active_tasks);



  }
 }
}
