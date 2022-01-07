
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef int user_addr_t ;
typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct proc {int dummy; } ;
typedef int lck_rw_t ;
typedef int kern_return_t ;
typedef int arm_saved_state_t ;
struct TYPE_9__ {int cpu_ft_lock; } ;
struct TYPE_8__ {int cpsr; scalar_t__ pc; } ;
struct TYPE_7__ {scalar_t__ pc; } ;
struct TYPE_6__ {scalar_t__ t_dtrace_step; scalar_t__ t_dtrace_ret; scalar_t__ t_dtrace_ft; scalar_t__ t_dtrace_ast; int t_dtrace_npc; } ;


 TYPE_5__* CPU ;
 scalar_t__ FASTTRAP_ARM32_INSTR ;
 scalar_t__ FASTTRAP_ARM32_RET_INSTR ;
 scalar_t__ FASTTRAP_ARM64_INSTR ;
 scalar_t__ FASTTRAP_ARM64_RET_INSTR ;
 scalar_t__ FASTTRAP_THUMB32_INSTR ;
 scalar_t__ FASTTRAP_THUMB32_RET_INSTR ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int PSR_TF ;
 scalar_t__ copyin (int ,scalar_t__*,int) ;
 struct proc* current_proc () ;
 int current_thread () ;
 scalar_t__ dtrace_pid_probe_ptr (int *) ;
 int dtrace_return_probe_ptr (int *) ;
 scalar_t__ fuword16 (scalar_t__,scalar_t__*) ;
 scalar_t__ fuword32 (scalar_t__,scalar_t__*) ;
 int get_bsdthread_info (int ) ;
 scalar_t__ is_saved_state32 (int *) ;
 int kauth_cred_uthread_update (TYPE_1__*,struct proc*) ;
 int lck_rw_lock_shared (int *) ;
 int lck_rw_unlock_shared (int *) ;
 int printf (char*) ;
 TYPE_3__* saved_state32 (int *) ;
 TYPE_2__* saved_state64 (int *) ;
 int set_saved_state_pc (int *,int ) ;
 int stub1 (int *) ;
 scalar_t__ stub2 (int *) ;

kern_return_t
dtrace_user_probe(arm_saved_state_t *regs)
{







 lck_rw_t *rwp;
 struct proc *p = current_proc();
 int is_fasttrap = 0;

 uthread_t uthread = (uthread_t)get_bsdthread_info(current_thread());

 kauth_cred_uthread_update(uthread, p);

 if (is_saved_state32(regs)) {
  if (saved_state32(regs)->cpsr & PSR_TF) {
   uint16_t pc;
   if (copyin((user_addr_t)saved_state32(regs)->pc, &pc, sizeof(uint16_t))) {
    return KERN_FAILURE;
   }
   is_fasttrap = (pc == FASTTRAP_THUMB32_RET_INSTR);
  } else {
   uint32_t pc;
   if (copyin((user_addr_t)saved_state32(regs)->pc, &pc, sizeof(uint32_t))) {
    return KERN_FAILURE;
   }
   is_fasttrap = (pc == FASTTRAP_ARM32_RET_INSTR);
  }
 } else {
  uint32_t pc;
  if (copyin((user_addr_t)saved_state64(regs)->pc, &pc, sizeof(uint32_t))) {
   return KERN_FAILURE;
  }
  is_fasttrap = (pc == FASTTRAP_ARM64_RET_INSTR);
 }

 if (is_fasttrap) {
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
   set_saved_state_pc(regs, npc);
   return KERN_SUCCESS;
  }





  rwp = &CPU->cpu_ft_lock;
  lck_rw_lock_shared(rwp);

  if (dtrace_return_probe_ptr != ((void*)0))
   (void) (*dtrace_return_probe_ptr)(regs);
  lck_rw_unlock_shared(rwp);

  set_saved_state_pc(regs, npc);

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
  if (is_saved_state32(regs)) {
   if (saved_state32(regs)->cpsr & PSR_TF) {
    uint16_t instr;
    if (fuword16(saved_state32(regs)->pc, &instr) == 0 && instr != FASTTRAP_THUMB32_INSTR) {
     return KERN_SUCCESS;
    }
   } else {
    uint32_t instr;
    if (fuword32(saved_state32(regs)->pc, &instr) == 0 && instr != FASTTRAP_ARM32_INSTR) {
     return KERN_SUCCESS;
    }
   }
  } else {
   uint32_t instr;
   if (fuword32(saved_state64(regs)->pc, &instr) == 0 && instr != FASTTRAP_ARM64_INSTR) {
    return KERN_SUCCESS;
   }
  }
 }

 return KERN_FAILURE;
}
