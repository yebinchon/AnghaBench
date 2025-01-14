
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int boolean_t ;
typedef int arm_saved_state_t ;


 int DBG_FUNC_START ;
 int DBG_MACH_EXCP_INTR ;
 int FALSE ;
 int KDBG_RELEASE (int,int ,scalar_t__,scalar_t__,unsigned int) ;
 int MACHDBG_CODE (int ,int ) ;
 scalar_t__ PSR64_IS_USER (int ) ;
 scalar_t__ VM_KERNEL_UNSLIDE (scalar_t__) ;
 int get_saved_state_cpsr (int *) ;
 scalar_t__ get_saved_state_pc (int *) ;
 int telemetry_mark_curthread (int ,int ) ;
 scalar_t__ telemetry_needs_record ;

__attribute__((used)) static void
sleh_interrupt_handler_prologue(arm_saved_state_t *state, unsigned int type)
{
 uint64_t is_user = PSR64_IS_USER(get_saved_state_cpsr(state));

 uint64_t pc = is_user ? get_saved_state_pc(state) :
               VM_KERNEL_UNSLIDE(get_saved_state_pc(state));

 KDBG_RELEASE(MACHDBG_CODE(DBG_MACH_EXCP_INTR, 0) | DBG_FUNC_START,
              0, pc, is_user, type);






}
