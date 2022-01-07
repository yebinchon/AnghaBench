
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int x86_saved_state_t ;
struct TYPE_9__ {int trapno; void* rip; } ;
struct TYPE_10__ {TYPE_1__ isf; } ;
typedef TYPE_2__ x86_saved_state64_t ;
struct TYPE_11__ {int cs; int trapno; void* eip; } ;
typedef TYPE_3__ x86_saved_state32_t ;
typedef TYPE_4__* uthread_t ;
typedef void* user_addr_t ;
typedef scalar_t__ uint8_t ;
struct proc {int dummy; } ;
typedef int lck_rw_t ;
typedef int kern_return_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_13__ {int cpu_ft_lock; } ;
struct TYPE_12__ {scalar_t__ t_dtrace_step; scalar_t__ t_dtrace_ret; scalar_t__ t_dtrace_ft; scalar_t__ t_dtrace_ast; void* t_dtrace_npc; } ;


 TYPE_8__* CPU ;
 scalar_t__ FASTTRAP_INSTR ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ TRUE ;
 int T_DTRACE_RET ;
 int T_INT3 ;
 struct proc* current_proc () ;
 int current_thread () ;
 scalar_t__ dtrace_pid_probe_ptr (int *) ;
 int dtrace_return_probe_ptr (int *) ;
 scalar_t__ fuword8 (void*,scalar_t__*) ;
 int get_bsdthread_info (int ) ;
 scalar_t__ is_saved_state64 (int *) ;
 int kauth_cred_uthread_update (TYPE_4__*,struct proc*) ;
 int lck_rw_lock_shared (int *) ;
 int lck_rw_unlock_shared (int *) ;
 int printf (char*) ;
 TYPE_3__* saved_state32 (int *) ;
 TYPE_2__* saved_state64 (int *) ;
 int stub1 (int *) ;
 scalar_t__ stub2 (int *) ;

kern_return_t
dtrace_user_probe(x86_saved_state_t *regs)
{
 x86_saved_state64_t *regs64;
 x86_saved_state32_t *regs32;
        int trapno;







 boolean_t user_mode = TRUE;

        if (is_saved_state64(regs) == TRUE) {
                regs64 = saved_state64(regs);
  regs32 = ((void*)0);
                trapno = regs64->isf.trapno;
                user_mode = TRUE;
        } else {
  regs64 = ((void*)0);
                regs32 = saved_state32(regs);
                if (regs32->cs & 0x03) user_mode = TRUE;
                trapno = regs32->trapno;
        }

 lck_rw_t *rwp;
 struct proc *p = current_proc();

 uthread_t uthread = (uthread_t)get_bsdthread_info(current_thread());
 if (user_mode ) {





  kauth_cred_uthread_update(uthread, p);
 }

 if (trapno == T_DTRACE_RET) {
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
   if (regs64) {
    regs64->isf.rip = npc;
   } else {
    regs32->eip = npc;
   }
   return KERN_SUCCESS;
  }





  rwp = &CPU->cpu_ft_lock;
  lck_rw_lock_shared(rwp);

  if (dtrace_return_probe_ptr != ((void*)0))
   (void) (*dtrace_return_probe_ptr)(regs);
  lck_rw_unlock_shared(rwp);

  if (regs64) {
   regs64->isf.rip = npc;
  } else {
   regs32->eip = npc;
  }

  return KERN_SUCCESS;
 } else if (trapno == T_INT3) {
  uint8_t instr, instr2;
  rwp = &CPU->cpu_ft_lock;
  lck_rw_lock_shared(rwp);
  if (dtrace_pid_probe_ptr != ((void*)0) &&
      (*dtrace_pid_probe_ptr)(regs) == 0) {
   lck_rw_unlock_shared(rwp);
   return KERN_SUCCESS;
  }
  lck_rw_unlock_shared(rwp);
  user_addr_t pc = (regs64) ? regs64->isf.rip : (user_addr_t)regs32->eip;
  if (fuword8(pc - 1, &instr) == 0 && instr != FASTTRAP_INSTR &&
   !(instr == 3 && fuword8(pc - 2, &instr2) == 0 && instr2 == 0xCD)) {
   if (regs64) {
    regs64->isf.rip--;
   } else {
    regs32->eip--;
   }
   return KERN_SUCCESS;
  }

 }

 return KERN_FAILURE;
}
