
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interrupt_source; int interrupts_enabled; void* interrupt_refCon; int interrupt_handler; void* interrupt_target; void* interrupt_nub; } ;
typedef TYPE_1__ cpu_data_t ;
typedef int boolean_t ;
typedef int IOInterruptHandler ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* getCpuDatap () ;
 int initialize_screen (int *,int ) ;
 int kPEAcquireScreen ;
 int ml_set_interrupts_enabled (int ) ;

void
ml_install_interrupt_handler(
        void *nub,
        int source,
        void *target,
        IOInterruptHandler handler,
        void *refCon)
{
 cpu_data_t *cpu_data_ptr;
 boolean_t current_state;

 current_state = ml_set_interrupts_enabled(FALSE);
 cpu_data_ptr = getCpuDatap();

 cpu_data_ptr->interrupt_nub = nub;
 cpu_data_ptr->interrupt_source = source;
 cpu_data_ptr->interrupt_target = target;
 cpu_data_ptr->interrupt_handler = handler;
 cpu_data_ptr->interrupt_refCon = refCon;

 cpu_data_ptr->interrupts_enabled = TRUE;
 (void) ml_set_interrupts_enabled(current_state);

 initialize_screen(((void*)0), kPEAcquireScreen);
}
