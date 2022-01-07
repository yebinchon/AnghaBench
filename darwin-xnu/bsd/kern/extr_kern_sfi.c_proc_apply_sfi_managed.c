
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* proc_t ;
typedef scalar_t__ pid_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {scalar_t__ p_pid; int task; } ;


 int DBG_FUNC_NONE ;
 int DBG_MACH_SFI ;
 scalar_t__ FALSE ;
 int KERNEL_DEBUG_CONSTANT (int,scalar_t__,int ,int ,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 int PROC_RETURNED ;
 int SFI_PID_CLEAR_MANAGED ;
 int SFI_PID_SET_MANAGED ;
 scalar_t__ SFI_PROCESS_SET_MANAGED ;
 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_DISABLE ;
 int TASK_POLICY_ENABLE ;
 int TASK_POLICY_SFI_MANAGED ;
 scalar_t__ TRUE ;
 int proc_set_task_policy (int ,int ,int ,int ) ;

__attribute__((used)) static int proc_apply_sfi_managed(proc_t p, void * arg)
{
 uint32_t flags = *(uint32_t *)arg;
 pid_t pid = p->p_pid;
 boolean_t managed_enabled = (flags == SFI_PROCESS_SET_MANAGED)? TRUE : FALSE;

 if (pid == 0) {
  return PROC_RETURNED;
 }

 if (managed_enabled) {
  KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SFI, SFI_PID_SET_MANAGED) | DBG_FUNC_NONE, pid, 0, 0, 0, 0);
 } else {
  KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_SFI, SFI_PID_CLEAR_MANAGED) | DBG_FUNC_NONE, pid, 0, 0, 0, 0);
 }

 proc_set_task_policy(p->task,
                      TASK_POLICY_ATTRIBUTE, TASK_POLICY_SFI_MANAGED,
                      managed_enabled ? TASK_POLICY_ENABLE : TASK_POLICY_DISABLE);

 return PROC_RETURNED;
}
