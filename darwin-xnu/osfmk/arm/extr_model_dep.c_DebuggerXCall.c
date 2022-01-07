
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_10__ {int cpsr; } ;
typedef TYPE_2__ arm_saved_state_t ;
struct TYPE_9__ {scalar_t__ kstackptr; } ;
struct TYPE_11__ {TYPE_1__ machine; } ;


 int DMB_ISH ;
 scalar_t__ FALSE ;
 scalar_t__ PSR64_IS_KERNEL (int ) ;
 scalar_t__ PSR_IS_KERNEL (int ) ;
 int __builtin_arm_dmb (int ) ;
 TYPE_8__* current_thread () ;
 int debugger_sync ;
 int get_saved_state_cpsr (TYPE_2__*) ;
 int hw_atomic_sub (int *,int) ;
 scalar_t__ mp_kdp_trap ;
 int set_saved_state_fp (TYPE_2__*,int ) ;
 int set_saved_state_lr (TYPE_2__*,int ) ;
 int set_saved_state_pc (TYPE_2__*,int ) ;
 int set_saved_state_sp (TYPE_2__*,int ) ;

void
DebuggerXCall(
 void *ctx)
{
 boolean_t save_context = FALSE;
 vm_offset_t kstackptr = 0;
 arm_saved_state_t *regs = (arm_saved_state_t *) ctx;

 if (regs != ((void*)0)) {



  save_context = PSR_IS_KERNEL(regs->cpsr);

 }

 kstackptr = current_thread()->machine.kstackptr;
 arm_saved_state_t *state = (arm_saved_state_t *)kstackptr;

 if (save_context) {

  *state = *regs;

 } else if (regs) {

  set_saved_state_fp(state, 0);
  set_saved_state_pc(state, 0);
  set_saved_state_lr(state, 0);
  set_saved_state_sp(state, 0);
 }

 (void)hw_atomic_sub(&debugger_sync, 1);
 __builtin_arm_dmb(DMB_ISH);
 while (mp_kdp_trap);


}
