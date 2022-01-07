
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef void* user_addr_t ;
typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct proc {int dummy; } ;
typedef int lck_rw_t ;
typedef int kern_return_t ;
struct TYPE_11__ {int cpsr; void* pc; } ;
typedef TYPE_2__ arm_saved_state_t ;
struct TYPE_12__ {int cpu_ft_lock; } ;
struct TYPE_10__ {scalar_t__ t_dtrace_step; scalar_t__ t_dtrace_ret; scalar_t__ t_dtrace_ft; scalar_t__ t_dtrace_ast; void* t_dtrace_npc; } ;


 TYPE_9__* CPU ;
 scalar_t__ FASTTRAP_ARM_INSTR ;
 scalar_t__ FASTTRAP_ARM_RET_INSTR ;
 scalar_t__ FASTTRAP_THUMB_INSTR ;
 scalar_t__ FASTTRAP_THUMB_RET_INSTR ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int PSR_TF ;
 struct proc* current_proc () ;
 int current_thread () ;
 scalar_t__ dtrace_pid_probe_ptr (TYPE_2__*) ;
 int dtrace_return_probe_ptr (TYPE_2__*) ;
 scalar_t__ fuword16 (void*,scalar_t__*) ;
 scalar_t__ fuword32 (void*,scalar_t__*) ;
 int get_bsdthread_info (int ) ;
 int kauth_cred_uthread_update (TYPE_1__*,struct proc*) ;
 int lck_rw_lock_shared (int *) ;
 int lck_rw_unlock_shared (int *) ;
 int printf (char*) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ stub2 (TYPE_2__*) ;

kern_return_t
dtrace_user_probe(arm_saved_state_t *regs, unsigned int instr)
{







 lck_rw_t *rwp;
 struct proc *p = current_proc();

 uthread_t uthread = (uthread_t)get_bsdthread_info(current_thread());

 kauth_cred_uthread_update(uthread, p);

 if (((regs->cpsr & PSR_TF) && ((uint16_t) instr) == FASTTRAP_THUMB_RET_INSTR) ||
     ((uint32_t) instr == FASTTRAP_ARM_RET_INSTR)) {
  uint8_t step = uthread->t_dtrace_step;
  uint8_t ret = uthread->t_dtrace_ret;
  user_addr_t npc = uthread->t_dtrace_npc;

  if (uthread->t_dtrace_ast) {
   printf("dtrace_user_probe() should be calling aston()\n");


  }




  uthread->t_dtrace_ft = 0;






  if (step == 0) {





   return KERN_FAILURE;
  }







  if (ret == 0) {
   regs->pc = npc;
   return KERN_SUCCESS;
  }





  rwp = &CPU->cpu_ft_lock;
  lck_rw_lock_shared(rwp);

  if (dtrace_return_probe_ptr != ((void*)0))
   (void) (*dtrace_return_probe_ptr)(regs);
  lck_rw_unlock_shared(rwp);

  regs->pc = npc;

  return KERN_SUCCESS;
 } else {
  rwp = &CPU->cpu_ft_lock;
  lck_rw_lock_shared(rwp);
  if (dtrace_pid_probe_ptr != ((void*)0) &&
      (*dtrace_pid_probe_ptr)(regs) == 0) {
   lck_rw_unlock_shared(rwp);
   return KERN_SUCCESS;
  }
  lck_rw_unlock_shared(rwp);
  if (regs->cpsr & PSR_TF) {
   uint16_t instr_check;
   if (fuword16(regs->pc, &instr_check) == 0 && instr_check != FASTTRAP_THUMB_INSTR) {
    return KERN_SUCCESS;
   }
  } else {
   uint32_t instr_check;
   if (fuword32(regs->pc, &instr_check) == 0 && instr_check != FASTTRAP_ARM_INSTR) {
    return KERN_SUCCESS;
   }
  }
 }

 return KERN_FAILURE;
}
