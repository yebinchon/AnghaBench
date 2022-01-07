
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_5__* thread_t ;
typedef int mach_msg_type_number_t ;
typedef int mach_exception_data_type_t ;
typedef int exception_type_t ;
typedef int arm_saved_state_t ;
struct TYPE_10__ {int * upcb; TYPE_3__* DebugData; } ;
struct TYPE_11__ {TYPE_4__ machine; } ;
struct TYPE_7__ {int mdscr_el1; } ;
struct TYPE_8__ {TYPE_1__ ds64; } ;
struct TYPE_9__ {TYPE_2__ uds; } ;


 int DAIF_FIQF ;
 int DAIF_IRQF ;
 int EXC_BREAKPOINT ;
 int PSR64_IS_USER (int) ;
 int PSR64_SS ;
 int assert (int ) ;
 TYPE_5__* current_thread () ;
 int exception_triage (int ,int*,int) ;
 int get_saved_state_cpsr (int *) ;
 int panic_with_thread_kernel_state (char*,int *) ;
 int set_saved_state_cpsr (int *,int) ;

__attribute__((used)) static void
handle_sw_step_debug(arm_saved_state_t *state)
{
 thread_t thread = current_thread();
 exception_type_t exc;
 mach_exception_data_type_t codes[2];
 mach_msg_type_number_t numcodes = 2;

 if (!PSR64_IS_USER(get_saved_state_cpsr(state))) {
  panic_with_thread_kernel_state("SW_STEP_DEBUG exception from kernel.", state);
 }


 if (thread->machine.DebugData != ((void*)0)) {
  thread->machine.DebugData->uds.ds64.mdscr_el1 &= ~0x1;
 } else {
  panic_with_thread_kernel_state("SW_STEP_DEBUG exception thread DebugData is NULL.", state);
 }

 set_saved_state_cpsr((thread->machine.upcb),
     get_saved_state_cpsr((thread->machine.upcb)) & ~(PSR64_SS | DAIF_IRQF | DAIF_FIQF));


 exc = EXC_BREAKPOINT;
 codes[0] = 1;
 codes[1] = 0;

 exception_triage(exc, codes, numcodes);
 assert(0);
}
